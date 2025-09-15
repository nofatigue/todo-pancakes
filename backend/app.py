from contextlib import asynccontextmanager

from litestar.params import Dependency
from typing_extensions import Any, AsyncGenerator
from litestar import Litestar, get
from litestar.di import  Provide
from backend.db.config import engine, Base, get_db_session

@asynccontextmanager
async def db_lifespan(app) -> AsyncGenerator[None, None]:
    async with engine.begin() as conn:
        await conn.run_sync(Base.metadata.create_all)

    yield

    await engine.dispose()


@get("/")
async def index(db_session: Any = Dependency()) -> str:
    return "Hello, world!"

app = Litestar(
    route_handlers=[index],
    dependencies={'db_session' : Provide(get_db_session)},
    lifespan=[db_lifespan],
    )
