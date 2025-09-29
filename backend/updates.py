import asyncio
from enum import StrEnum
import msgspec
import redis.asyncio as redis
import strawberry

from backend.config import REDIS_HOST, REDIS_PORT
from backend.task import TodoItem

TaskUpdatesChannelName = "todo_updates"

async def get_redis_client() -> redis.Redis:
    return await redis.Redis(host=REDIS_HOST, port=REDIS_PORT)


@strawberry.enum
class TaskUpdateType(StrEnum):
    ADD = 'add'
    MODIFY = 'modify'
    DELETE = 'delete'

@strawberry.type
class TaskUpdate():
    type: TaskUpdateType
    task: TodoItem

class UpdateService():
    def __init__(self, redis_client):
        self.redis_client = redis_client

    redis_client: redis.Redis

    async def add_task_update(self, new_task: TodoItem):
        # publish update to redis
        task_update: TaskUpdate = TaskUpdate(type = TaskUpdateType.ADD, task = new_task)
        await self.redis_client.publish(TaskUpdatesChannelName, msgspec.json.encode(task_update))

    async def todo_update_generator(self):

        async with self.redis_client.pubsub() as pubsub:
        
            await pubsub.subscribe(TaskUpdatesChannelName)

            while True:
                await asyncio.sleep(0.1)
                msg = await pubsub.get_message(ignore_subscribe_messages=True, timeout=None)
                if msg is None:
                    continue

                print(f"msg recieved: {msg}")

                if not 'data' in msg.keys():
                    print("no data")
                    continue

                task_update: TaskUpdate = msgspec.json.decode(msg['data'], type=TaskUpdate)

                yield task_update

async def get_update_service() -> UpdateService:
    redis_client = await get_redis_client()
    return UpdateService(redis_client=redis_client)