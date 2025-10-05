import asyncio
from dataclasses import dataclass
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


class TasksUpdateNotificationType(StrEnum):
    MODIFY = 'modify'
    DELETE = 'delete'

@dataclass
class TasksUpdateNotification():
    type: TasksUpdateNotificationType
    # this might be invalied for delete
    tasks: List[TodoItem]

class UpdateService():
    def __init__(self, redis_client, db_service):
        self.redis_client = redis_client
        self.db_service = db_service

    redis_client: redis.Redis
    db_service: DbService

    async def tasks_update_type_modify(self, modify_list: list[TodoItem]):
        task_update = TasksUpdateNotification(type = TasksUpdateNotificationType.MODIFY, tasks = modify_list)
        await self.redis_client.publish(TASKS_UPDATES_CHANNEL_NAME, msgspec.json.encode(task_update))

    async def todo_update_generator(self) -> AsyncGenerator[List[TodoItem], None]:
        
        all_tasks_list = await self.db_service.get_all_tasks()
        
        all_tasks_dict = {item.id : item for item in all_tasks_list}

        async with self.redis_client.pubsub() as pubsub:
        
            await pubsub.subscribe(TASKS_UPDATES_CHANNEL_NAME)

            # send subscriber the initial copy the task list
            
            yield list(all_tasks_dict.values())

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
                    task_update_notification: TasksUpdateNotification = msgspec.json.decode(msg['data'], type=TasksUpdateNotification)
                except msgspec.MsgspecError as e:
                    logging.error(f"Msgspec Error: {e}")
                    continue
                    
                
                if task_update_notification.type == TasksUpdateNotificationType.MODIFY:
                    tasks_modify_list = task_update_notification.tasks

                    to_modify_dict = {item.id : item for item in tasks_modify_list}

                    # update our task list copy with the modifications
                    all_tasks_dict.update(to_modify_dict)

                else:
                    logging.error(f"Unimplemented task_update_notification.type: {task_update_notification.type} ")

                yield list(all_tasks_dict.values())


async def get_update_service(db_service: DbService) -> UpdateService:
    redis_client = await get_redis_client()
    return UpdateService(redis_client=redis_client, db_service=db_service)