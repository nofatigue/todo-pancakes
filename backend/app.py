from contextlib import asynccontextmanager

from sqlalchemy.ext.asyncio import AsyncSession
import strawberry
from litestar.params import Dependency

from collections.abc import AsyncGenerator
from litestar import Litestar, get
from litestar.di import  Provide
from backend import db
from backend.db import engine, Base
from backend.task_service import TaskService, get_task_service

from strawberry.litestar import make_graphql_controller

import redis.asyncio as redis

from backend.schema import MyContext, Query, Mutation, Subscription

def custom_context_getter(task_service: TaskService = Dependency()) -> MyContext:
    return {'task_service' : task_service}

@asynccontextmanager
async def db_lifespan(app) -> AsyncGenerator[None, None]:
    async with engine.begin() as conn:
        await conn.run_sync(Base.metadata.create_all)

    yield

    await engine.dispose()

@get("/")
async def index() -> str:
    return "Hello, world!"

schema = strawberry.Schema(query=Query, mutation=Mutation, subscription=Subscription)

graphql_contoller = make_graphql_controller(schema=schema, path="/graphql", context_getter=custom_context_getter)

app = Litestar(
    route_handlers=[index, graphql_contoller],
    dependencies={'task_service' : Provide(get_task_service),
    },
    lifespan=[db_lifespan],
    )
    
