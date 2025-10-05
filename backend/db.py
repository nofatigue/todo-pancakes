from sqlalchemy.ext.asyncio import AsyncSession

from typing import Any, AsyncGenerator
import redis.asyncio as redis
from sqlalchemy.ext.asyncio import async_sessionmaker, create_async_engine

from sqlalchemy.orm import DeclarativeBase, mapped_column

from sqlalchemy.orm import Mapped
import datetime

from sqlalchemy import ScalarResult, Update

from backend.config import DATABASE_URL
from backend.task import TodoItem

import sqlalchemy as sa

from backend.updates import UpdateService, get_update_service


# Base class for SQLAlchemy models
class Base(DeclarativeBase):
    pass

class TodoItemModel(Base):
    __tablename__ = "todoitems"
    id: Mapped[int] = mapped_column(primary_key=True)
    text: Mapped[str]
    completed: Mapped[bool]
    created_at: Mapped[datetime.datetime]

    def __repr__(self):
        return f"<Item {self.text} completed: {self.completed} created_at: {self.created_at}>"

# Create async SQLAlchemy engine
engine = create_async_engine(DATABASE_URL, echo=True)

# Create sessionmaker for database sessions
async_session_factory = async_sessionmaker(engine, expire_on_commit=False)

# Dependency function to get database session
async def get_db_session() -> AsyncGenerator[Any, Any]:
    """Dependency for database session."""
    async with async_session_factory() as session:
        yield session

async def get_task_repo_service():
    async with async_session_factory() as db_session:
        update_service = await get_update_service()
        yield TaskRepositoryService(db_session=db_session, update_service=update_service)
        
class TaskRepositoryService():
    def __init__(self, db_session, update_service):
        self.db_session = db_session
        self.update_service = update_service

    db_session: AsyncSession
    update_service: UpdateService

    async def get_all_tasks(self) -> list[TodoItem]:
        tasks_rows = sa.select(TodoItemModel)

        return [TodoItem(id=task.id,
                completed=task.completed,
                created_at=task.created_at,
                 text=task.text) 
                 for task in await self.db_session.scalars(tasks_rows)]
        
    async def add_task(self, text: str) -> TodoItem:
        
        new_item_model: TodoItemModel = TodoItemModel(text=text,
            completed=False,
            created_at=datetime.datetime.now())

        # add new item to db
        self.db_session.add(new_item_model)
        await self.db_session.commit()
        await self.db_session.refresh(new_item_model)
        
        new_item_obj: TodoItem = TodoItem(id=new_item_model.id, text=new_item_model.text, completed=new_item_model.completed, created_at=new_item_model.created_at)

        await self.send_updates_for_subscribers()

        return new_item_obj

    async def send_updates_for_subscribers(self):
        tasks = await self.get_all_tasks()

        await self.update_service.tasks_update_type_init(init_list=tasks)

        
