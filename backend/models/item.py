import datetime
from sqlalchemy.orm import mapped_column
from sqlalchemy.orm import DeclarativeBase
from sqlalchemy.orm import Mapped
from backend.db.config import Base

class TodoItemModel(Base):
    __tablename__ = "todoitems"
    id: Mapped[int] = mapped_column(primary_key=True)
    text: Mapped[str]
    completed: Mapped[bool]
    created_at: Mapped[datetime.datetime]

    def __repr__(self):
        return f"<Item {self.text} completed: {self.completed} created_at: {self.created_at}>"
