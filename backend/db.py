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

class DbService():
    """
    Handle db operations
    """
    def __init__(self, db_session_maker):
        self.db_session_maker = db_session_maker

    db_session_maker: async_sessionmaker[AsyncSession]

    async def get_all_tasks(self) -> list[TodoItem]:
        """
        Read all tasks from db and return
        """

        async with self.db_session_maker() as db_session:

            tasks_rows = sa.select(TodoItemModel)

            return [TodoItem(id=task.id,
                    completed=task.completed,
                    created_at=task.created_at,
                    text=task.text) 
                    for task in await db_session.scalars(tasks_rows)]
        
    async def add_task(self, text: str) -> TodoItem:
        """
        Write a single task to db and update on updates channel
        """

        async with self.db_session_maker() as db_session:

            new_item_model: TodoItemModel = TodoItemModel(text=text,
                completed=False,
                created_at=datetime.datetime.now())

            # add new item to db
            db_session.add(new_item_model)
            await db_session.commit()
            await db_session.refresh(new_item_model)
            
            new_item_obj: TodoItem = TodoItem(id=new_item_model.id, text=new_item_model.text, completed=new_item_model.completed, created_at=new_item_model.created_at)


        return new_item_obj
