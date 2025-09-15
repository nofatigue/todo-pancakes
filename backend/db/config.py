
from sqlalchemy.ext.asyncio import async_sessionmaker, create_async_engine
from sqlalchemy.orm import DeclarativeBase

# Base class for SQLAlchemy models
class Base(DeclarativeBase):
    pass

from backend.models import item

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
