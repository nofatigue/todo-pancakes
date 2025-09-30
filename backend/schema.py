import asyncio
from dataclasses import dataclass
import datetime
from enum import Enum, StrEnum
import msgspec
import strawberry
from sqlalchemy.ext.asyncio import AsyncSession
from typing import AsyncGenerator, List, TypedDict
from backend.db import TaskRepositoryService
from sqlalchemy import ScalarResult

from backend.db import TodoItemModel

import redis.asyncio as redis

from backend.task import TodoItem
from backend.updates import TaskUpdate

@strawberry.input
class AddTaskInput:
    text: str

class MyContext(TypedDict):
    db_service: TaskRepositoryService
    
type MyStrawberryInfo = strawberry.Info[MyContext]

@strawberry.type
class Query:
    @strawberry.field
    async def tasks(self, info: MyStrawberryInfo) -> List[TodoItem]:
        db_service = info.context['db_service']
        tasks = await db_service.get_all_tasks()
        
        return tasks
     
@strawberry.type
class Mutation:
    @strawberry.mutation
    async def add_task(self, text: str, info: MyStrawberryInfo) -> TodoItem:
        db_service = info.context['db_service']

        new_item: TodoItem = await db_service.add_task(text)

        return new_item

@strawberry.type
class Subscription:
    @strawberry.subscription
    async def tasks_updates(self, nothing: str, info: MyStrawberryInfo) -> AsyncGenerator[TaskUpdate, None]:
        update_service = info.context['db_service'].update_service

        async for update in update_service.todo_update_generator():
            yield update
        
       