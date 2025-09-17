import datetime
import strawberry
from sqlalchemy.ext.asyncio import AsyncSession
from typing import List
import sqlalchemy
from sqlalchemy import ScalarResult
import typing

from backend.db import orm_to_dict
import datetime

from backend.db import TodoItemModel

@strawberry.type
class TodoItem:
    id: int
    text: str
    completed: bool
    created_at: datetime.datetime


@strawberry.input
class AddTaskInput:
    text: str

@strawberry.type
class Query:
    #tasks: typing.List[TodoItem] = strawberry.field(resolver=get_tasks)
    @strawberry.field
    async def tasks(info: strawberry.Info) -> List[TodoItem]:
        #, info: strawberry.Info[dict, None]
        db_session: AsyncSession = info.context["db_session"]

        tasks: List[TodoItem] = []
        tasks_rows = sqlalchemy.select(TodoItemModel)

        tasks_orm: ScalarResult = await db_session.scalars(tasks_rows)

        for task in tasks_orm:
            task_dict = orm_to_dict(task)
            tasks.append(TodoItem(id=task_dict['id'],
                text=task_dict['text'],
                completed=task_dict['completed'],
                created_at=task_dict['created_at']  )
            )

        #tasks = [TodoItem(text="1"), TodoItem(text="2")]
        return tasks

@strawberry.type
class Mutation:
    #add_task: TodoItem = strawberry.mutation(resolver=add_task)
    @strawberry.mutation
    #info: strawberry.Info[dict, None]
    async def add_task(self, info: strawberry.Info, text: str) -> TodoItem:
        db_session: AsyncSession = info.context["db_session"]

        new_item: TodoItemModel = TodoItemModel(text=text,
            completed=False,
            created_at=datetime.datetime.now())

        db_session.add(new_item)
        await db_session.commit()
        await db_session.refresh(new_item)
        #return TodoItem(id=1,text="123",completed=False,created_at=datetime.datetime.now())
        return TodoItem(id=new_item.id, text=new_item.text, completed=new_item.completed, created_at=new_item.created_at)
