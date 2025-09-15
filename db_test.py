import sqlalchemy

from typing import List
from typing import Optional
from sqlalchemy import ForeignKey
from sqlalchemy import String
from sqlalchemy.engine.result import ScalarResult
from sqlalchemy.orm import DeclarativeBase
from sqlalchemy.orm import Mapped
from sqlalchemy.orm import mapped_column
from sqlalchemy.orm import relationship
from sqlalchemy.orm import Session

#what is mapped_column?
class Base(DeclarativeBase):
    pass

class TodoItem(Base):
    __tablename__ = "items"
    id: Mapped[int] = mapped_column(primary_key=True)
    text: Mapped[str]

def orm_to_dict(orm_obj: ScalarResult) -> dict:
    return {k: v for k, v in orm_obj.__dict__.items() if not k.startswith('_')}

def add_tasks(task_list: list[TodoItem]):
    with Session(engine) as session:
        session.add_all(task_list)
        session.commit()

def add_some_tasks():

    task1 = TodoItem(text="Call mom tomorrow")
    task2 = TodoItem(text="Buy soy milk from the grocery")
    task3 = TodoItem(text="Renew license plate for the tank")

    add_tasks([task1, task2, task3])

def get_tasks():
    tasks = []
    with Session(engine) as session:
        tasks_rows = sqlalchemy.select(TodoItem)
        tasks_orm: ScalarResult = session.scalars(tasks_rows)

        for task in tasks_orm:
            task_dict = orm_to_dict(task)
            tasks.append(task_dict)

    return tasks

def print_tasks():
    print("Current tasks in DB")
    tasks = get_tasks()
    if tasks:
        for task in tasks:
            print(task)
    else:
        print("There are no tasks currently! You are free!")

# create postgresql db in memory
engine = sqlalchemy.create_engine("sqlite+pysqlite:///:memory:", echo=True)
Base.metadata.create_all(engine)
print_tasks()
add_some_tasks()
print_tasks()
