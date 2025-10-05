import asyncio
from enum import StrEnum
import logging
from typing import AsyncGenerator, Final, List
import msgspec
import redis.asyncio as redis
import strawberry

from backend import task
from backend.config import REDIS_HOST, REDIS_PORT
from backend.db import DbService
from backend.task import TodoItem

TASKS_UPDATES_CHANNEL_NAME: Final[str] = "todo_updates"

async def get_redis_client() -> redis.Redis:
    return await redis.Redis(host=REDIS_HOST, port=REDIS_PORT)


@strawberry.enum
class TasksUpdateType(StrEnum):
    ADD = 'add'
    INIT = 'init'

@strawberry.type
class TasksUpdate():
    type: TasksUpdateType
    tasks: List[TodoItem]

class UpdateService():
    def __init__(self, redis_client, db_service):
        self.redis_client = redis_client
        self.db_service = db_service

    redis_client: redis.Redis
    db_service: DbService

    async def tasks_update_type_add(self, add_list: list[TodoItem]):
        task_update: TasksUpdate = TasksUpdate(type = TasksUpdateType.ADD, tasks = add_list)
        await self.redis_client.publish(TASKS_UPDATES_CHANNEL_NAME, msgspec.json.encode(task_update))

    async def todo_update_generator(self) -> AsyncGenerator[TasksUpdate, None]:
        
        all_tasks = await self.db_service.get_all_tasks()

        async with self.redis_client.pubsub() as pubsub:
        
            await pubsub.subscribe(TASKS_UPDATES_CHANNEL_NAME)

            # send subscriber the initial copy the task list
            task_update_to_subscribers: TasksUpdate = TasksUpdate(type = TasksUpdateType.INIT, tasks = all_tasks)
            yield task_update_to_subscribers

            while True:
                await asyncio.sleep(0.1)
                msg = await pubsub.get_message(
                    ignore_subscribe_messages=True, 
                    timeout=None # wait indefinitely
                    )
                if msg is None:
                    logging.error(f"get_message returned None")
                    continue
                
                print(f"msg recieved: {msg}")

                if not 'data' in msg.keys():
                    logging.error("no data")
                    continue

                try:
                    task_update_from_redis: TasksUpdate = msgspec.json.decode(msg['data'], type=TasksUpdate)
                except msgspec.MsgspecError as e:
                    logging.error(f"Msgspec Error: {e}")
                    continue
                    
                
                if task_update_from_redis.type == TasksUpdateType.ADD:
                    all_tasks += task_update_from_redis.tasks
                else:
                    logging.error(f"Unimplemented task_update_from_redis.type: {task_update_from_redis.type} ")

                # for subscribers, always send type INIT (send the whole list)
                task_update_to_subscribers: TasksUpdate = TasksUpdate(type = TasksUpdateType.INIT, tasks = all_tasks)
                yield task_update_to_subscribers


async def get_update_service(db_service: DbService) -> UpdateService:
    redis_client = await get_redis_client()
    return UpdateService(redis_client=redis_client, db_service=db_service)