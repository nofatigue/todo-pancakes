from litestar import Controller, post, get
from litestar.params import Dependency
from sqlalchemy.ext.asyncio import AsyncSession
from sqlalchemy.sql.schema import _InsertSentinelColumnDefault
from sqlalchemy import ScalarResult
import sqlalchemy
from backend.schemes.item import ItemResponse, ItemCreate
from backend.models.item import TodoItem
from typing import List

from backend.db.shared import orm_to_dict

class ItemController(Controller):
    path = "/api/items"
    tags = ["item"]

    @post()
    async def create_item(self, data: ItemCreate, db_session: AsyncSession = Dependency()) -> ItemResponse:

        new_item: TodoItem = TodoItem(text=data.text)

        db_session.add(new_item)
        await db_session.commit()
        await db_session.refresh(new_item)

        return ItemResponse(text = new_item.text)

    @get()
    async def get_items(self, db_session: AsyncSession = Dependency()) -> List[ItemResponse]:
        tasks: List[ItemResponse] = []
        tasks_rows = sqlalchemy.select(TodoItem)

        tasks_orm: ScalarResult = await db_session.scalars(tasks_rows)

        for task in tasks_orm:
            task_dict = orm_to_dict(task)
            tasks.append(ItemResponse(text=task_dict['text']))

        return tasks
