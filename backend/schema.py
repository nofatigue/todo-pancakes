import asyncio
from dataclasses import dataclass
import datetime
from enum import Enum, StrEnum
import msgspec
import strawberry
from sqlalchemy.ext.asyncio import AsyncSession
from typing import AsyncGenerator, List
import sqlalchemy as sa
from sqlalchemy import ScalarResult

from backend.db import orm_to_dict

from backend.db import TodoItemModel

import redis.asyncio as redis

TaskUpdatesChannelName = "todo_updates"
#TODO: Do not copy lines with out understanding them
#TODO: Extract DB operations into a seperate file!
#TODO: List comprehension

@strawberry.type
class TodoItem:
    id: int
    text: str
    completed: bool
    created_at: datetime.datetime


@strawberry.input
class AddTaskInput:
    text: str

@strawberry.enum
class TaskUpdateType(StrEnum):
    ADD = 'add'
    MODIFY = 'modify'
    DELETE = 'delete'

@strawberry.type
class TaskUpdate():
    type: TaskUpdateType
    task: TodoItem

@dataclass
class MyContext():
    db_session: AsyncSession
    redis_client: redis.Redis
    
type Info = strawberry.Info[MyContext]

@strawberry.type
class Query:
    @strawberry.field
    async def tasks(self, info: Info) -> List[TodoItem]:
        db_session: AsyncSession = info.context.db_session

        tasks_rows = sa.select(TodoItemModel)

        tasks: list[TodoItem] = []

        for task in (await db_session.scalars(tasks_rows)):
            tasks.append(TodoItem(id=task.id,
                completed=task.completed,
                created_at=task.created_at,
                 text=task.text
            ))

        return tasks

@strawberry.type
class Mutation:
    @strawberry.mutation
    async def add_task(self, info: strawberry.Info, text: str) -> TodoItem:
        db_session: AsyncSession = info.context["db_session"]
        redis_client: redis.Redis = info.context['redis_client']
        
        redis.Redis
        new_item: TodoItemModel = TodoItemModel(text=text,
            completed=False,
            created_at=datetime.datetime.now())

        # add new item to db
        db_session.add(new_item)
        await db_session.commit()
        await db_session.refresh(new_item)
        
        new_item_obj: TodoItem = TodoItem(id=new_item.id, text=new_item.text, completed=new_item.completed, created_at=new_item.created_at)

        # publish update to redis
        task_update: TaskUpdate = TaskUpdate(type = TaskUpdateType.ADD, task = new_item_obj)
        await redis_client.publish(TaskUpdatesChannelName, msgspec.json.encode(task_update))

        return new_item_obj

@strawberry.type
class Subscription:
    @strawberry.subscription
    async def tasks_updates(self, nothing: str, info: strawberry.Info) -> AsyncGenerator[TaskUpdate, None]:
        redis_db: redis.Redis = info.context['redis_client']
        
        async with redis_db.pubsub() as pubsub:
        
            await pubsub.subscribe(TaskUpdatesChannelName)

            while True:
                await asyncio.sleep(0.1)
                msg = await pubsub.get_message(ignore_subscribe_messages=True)
                if msg is None:
                    continue

                print(f"msg recieved: {msg}")

                if not 'data' in msg.keys():
                    print("no data")
                    continue

                task_update: TaskUpdate = msgspec.json.decode(msg['data'], type=TaskUpdate)

                yield task_update
        

