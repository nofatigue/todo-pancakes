
from sqlalchemy.ext.asyncio import async_sessionmaker, create_async_engine

from sqlalchemy.orm import DeclarativeBase, mapped_column

from sqlalchemy.orm import Mapped
import datetime

from sqlalchemy import ScalarResult

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


# Define the database URL directly
DATABASE_URL = "postgresql+psycopg://postgres:Password1@localhost:5444"

# Create async SQLAlchemy engine
engine = create_async_engine(DATABASE_URL, echo=True)

# Create sessionmaker for database sessions
async_session_factory = async_sessionmaker(engine, expire_on_commit=False)

# Dependency function to get database session
async def get_db_session():
    """Dependency for database session."""
    async with async_session_factory() as session:
        yield session

def orm_to_dict(orm_obj: ScalarResult) -> dict:
    return {k: v for k, v in orm_obj.__dict__.items() if not k.startswith('_')}
