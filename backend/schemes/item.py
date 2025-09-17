from dataclasses import dataclass

@dataclass
class ItemBase:
    text: str

@dataclass
class ItemCreate(ItemBase):
    pass

@dataclass
class ItemResponse(ItemBase):
    pass
