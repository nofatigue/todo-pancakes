import sqlalchemy
import datetime

from typing import List
from typing import Optional
from sqlalchemy import ForeignKey
from sqlalchemy import String
from sqlalchemy.engine.result import ScalarResult


from sqlalchemy.orm import relationship
from sqlalchemy.orm import Session
from backend.models.item import *
from backend.db.shared import *
#what is mapped_column?

def add_tasks(task_list: list[TodoItemModel]):
    with Session(engine) as session:
        session.add_all(task_list)
        session.commit()

def add_some_tasks():
    tasks = []
    tasks.append(TodoItemModel(text="Call mom tomorrow",completed=False, created_at=datetime.datetime.now()))
    #task2 = TodoItemModel(text="Buy soy milk from the grocery")
    #task3 = TodoItemModel(text="Renew license plate for the tank")

    add_tasks(tasks)

def get_tasks():
    tasks = []
    with Session(engine) as session:
        tasks_rows = sqlalchemy.select(TodoItemModel)
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

def delete_tasks(ids: list):
    with Session(engine) as session:
        for id in ids:
            #TODO: improve efficiency
            item = session.get(TodoItemModel, id)
            session.delete(item)

        session.commit()

# create postgresql db in memory
engine = sqlalchemy.create_engine("postgresql+psycopg://postgres:Password1@localhost:5444", echo=True)
Base.metadata.drop_all(engine)
Base.metadata.create_all(engine)
print_tasks()
add_some_tasks()
print_tasks()

tasks: list[dict] = get_tasks()
tasks_ids: list[int] = [task['id'] for task in tasks]

#delete_tasks(tasks_ids)
