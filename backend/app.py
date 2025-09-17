from contextlib import asynccontextmanager

from sqlalchemy.ext.asyncio import AsyncSession
import strawberry
from litestar.params import Dependency

from collections.abc import AsyncGenerator
from litestar import Litestar, get
from litestar.di import  Provide
from backend.db import engine, Base, get_db_session
from strawberry.litestar import make_graphql_controller


from backend.schema import Query, Mutation

def custom_context_getter(db_session: AsyncSession = Dependency()):
    return {'db_session': db_session}

@asynccontextmanager
async def db_lifespan(app) -> AsyncGenerator[None, None]:
    async with engine.begin() as conn:
        await conn.run_sync(Base.metadata.create_all)

    yield

    await engine.dispose()

@get("/")
async def index() -> str:
    return "Hello, world!"

schema = strawberry.Schema(query=Query, mutation=Mutation)

graphql_contoller = make_graphql_controller(schema=schema, path="/graphql", context_getter=custom_context_getter)

app = Litestar(
    route_handlers=[index, graphql_contoller],
    dependencies={'db_session' : Provide(get_db_session)},
    lifespan=[db_lifespan],
    )
