from sqlalchemy import ScalarResult

def orm_to_dict(orm_obj: ScalarResult) -> dict:
    return {k: v for k, v in orm_obj.__dict__.items() if not k.startswith('_')}
