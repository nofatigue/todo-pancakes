import asyncio
from dataclasses import dataclass
import datetime
from enum import Enum, StrEnum
import msgspec
import strawberry
from sqlalchemy.ext.asyncio import AsyncSession
from typing import AsyncGenerator, List, TypedDict
from backend.task_service import TaskService
from sqlalchemy import ScalarResult

from backend.db import TodoItemModel

import redis.asyncio as redis

from backend.task import TodoItem
from backend.updates import TasksUpdate, TasksUpdateType

@strawberry.input
class AddTaskInput:
    text: str

class MyContext(TypedDict):
    task_service: TaskService
    
type MyStrawberryInfo = strawberry.Info[MyContext]

@strawberry.type
class Query:
    @strawberry.field
    async def tasks(self, info: MyStrawberryInfo) -> List[TodoItem]:
        task_service = info.context['task_service']
        tasks = await task_service.get_all_tasks()
        
        return tasks
     
@strawberry.type
class Mutation:
    @strawberry.mutation
    async def add_task(self, text: str, info: MyStrawberryInfo) -> TodoItem:
        task_service = info.context['task_service']

        new_item: TodoItem = await task_service.add_task(text)

        return new_item

@strawberry.type
class Subscription:
    @strawberry.subscription
    async def tasks_updates(self, info: MyStrawberryInfo) -> AsyncGenerator[TasksUpdate, None]:
        update_service = info.context['task_service'].update_service

        # immediately generate a TasksUpdate for initial list
        yield TasksUpdate(type=TasksUpdateType.INIT, tasks=[])

        async for update in update_service.todo_update_generator():
            yield update
        
       