
import datetime
import strawberry


@strawberry.type
class TodoItem:
    id: int
    text: str
    completed: bool
    created_at: datetime.datetime
