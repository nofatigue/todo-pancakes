
from backend.db import DbService, async_session_factory
from backend.task import TodoItem
from backend.updates import UpdateService, get_update_service

async def get_task_service():
    db_service = DbService(db_session_maker=async_session_factory)

    update_service = await get_update_service(db_service=db_service)
    
    yield TaskService(db_service=db_service, update_service=update_service)

class TaskService():
    """
    Combined DbService and UpdateService
    """

    db_service: DbService
    update_service: UpdateService

    def __init__(self, db_service, update_service):
        self.db_service = db_service
        self.update_service = update_service

    async def get_all_tasks(self) -> list[TodoItem]:
        """
        Read all tasks from db and return
        """

        return await self.db_service.get_all_tasks()
    
    async def add_task(self, text: str) -> TodoItem:
        """
        Write a single task to db and update on updates channel
        """

        new_task = await self.db_service.add_task(text)

        await self.update_service.tasks_update_type_modify(modify_list=[new_task])

        return new_task
