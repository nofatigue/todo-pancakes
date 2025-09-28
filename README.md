todo-pancakes

# Setup Developer Environment
`
sudo apt-get install -y cmake curl git unzip xz-utils zip libglu1-mesa build-essential ninja-build pkg-config libgtk-3-dev liblzma-dev clang
`
# Run
from todo-pancakes/

DB:
`
docker run -d -e POSTGRES_PASSWORD=Password1 -p 5444:5432 postgres:latest
`

`
uv run uvicorn backend.app:app --reload
`