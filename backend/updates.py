import asyncio
from enum import StrEnum
import logging
from typing import List
import msgspec
import redis.asyncio as redis
import strawberry

from backend.config import REDIS_HOST, REDIS_PORT
from backend.task import TodoItem

TasksUpdatesChannelName = "todo_updates"

async def get_redis_client() -> redis.Redis:
    return await redis.Redis(host=REDIS_HOST, port=REDIS_PORT)


@strawberry.enum
class TasksUpdateType(StrEnum):
    ADD = 'add'
    MODIFY = 'modify'
    DELETE = 'delete'
    INIT = 'init'

@strawberry.type
class TasksUpdate():
    type: TasksUpdateType
    tasks: List[TodoItem]

class UpdateService():
    def __init__(self, redis_client):
        self.redis_client = redis_client

    redis_client: redis.Redis

    async def tasks_update_type_init(self, init_list: list[TodoItem]):
        task_update: TasksUpdate = TasksUpdate(type = TasksUpdateType.INIT, tasks = init_list)
        await self.redis_client.publish(TasksUpdatesChannelName, msgspec.json.encode(task_update))

    async def todo_update_generator(self):

        async with self.redis_client.pubsub() as pubsub:
        
            await pubsub.subscribe(TasksUpdatesChannelName)

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
                    task_update: TasksUpdate = msgspec.json.decode(msg['data'], type=TasksUpdate)
                except msgspec.MsgspecError as e:
                    logging.error(f"Msgspec Error: {e}")
                    continue

                yield task_update

async def get_update_service() -> UpdateService:
    redis_client = await get_redis_client()
    return UpdateService(redis_client=redis_client)