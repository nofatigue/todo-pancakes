import typing

import datetime

from contextlib import asynccontextmanager

import strawberry
from litestar.params import Dependency
from typing_extensions import Any, AsyncGenerator
from litestar import Litestar, get
from litestar.di import  Provide
from backend.controllers.item import ItemController
from backend.db.config import engine, Base, get_db_session
from strawberry.litestar import make_graphql_controller

from litestar import Controller, post, get
from litestar.params import Dependency
from sqlalchemy.ext.asyncio import AsyncSession
from sqlalchemy.sql.schema import _InsertSentinelColumnDefault
from sqlalchemy import ScalarResult
import sqlalchemy
from backend.schemes.item import ItemResponse, ItemCreate
from typing import List

from backend.db.shared import orm_to_dict
from backend.models.item import TodoItemModel

from backend.schema import Query, Mutation

def custom_context_getter(db_session: Any=Dependency()):
    return {'db_session': db_session}

@asynccontextmanager
async def db_lifespan(app) -> AsyncGenerator[None, None]:
    async with engine.begin() as conn:
        await conn.run_sync(Base.metadata.create_all)

    yield

    await engine.dispose()

@get("/")
async def index(db_session: Any = Dependency()) -> str:
    return "Hello, world!"

schema = strawberry.Schema(query=Query, mutation=Mutation)

graphql_contoller = make_graphql_controller(schema=schema, path="/graphql", context_getter=custom_context_getter)

app = Litestar(
    route_handlers=[index, ItemController, graphql_contoller],
    dependencies={'db_session' : Provide(get_db_session)},
    lifespan=[db_lifespan],
    )
