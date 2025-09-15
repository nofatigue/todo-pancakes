from sqlalchemy.orm import mapped_column
from sqlalchemy.orm import DeclarativeBase
from sqlalchemy.orm import Mapped
from backend.db.config import Base

class TodoItem(Base):
    __tablename__ = "todoitems"
    id: Mapped[int] = mapped_column(primary_key=True)
    text: Mapped[str]

    def __repr__(self):
        return f"<Item {self.text}>"
