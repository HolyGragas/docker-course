# 05 – Docker Compose

Compose describes a multi-container app in one file (`compose.yaml`) and
starts it with one command. Here: a Flask web app + PostgreSQL that counts visits.

## What `compose.yaml` sets up
- **services**: `web` (built from `./app`) and `db` (official `postgres` image)
- **network**: Compose creates one automatically, so `web` reaches the DB at hostname `db`
- **volume**: `db-data` keeps the database between restarts
- **depends_on + healthcheck**: `web` waits until Postgres is ready
- **environment**: DB settings passed as env vars

## Workflow
```
docker compose up -d --build   # build + start in background
docker compose ps              # status
docker compose logs -f web     # follow logs
docker compose down            # stop & remove containers (volume kept)
docker compose down -v         # ...and delete the volume too
```
Open http://localhost:8000 and refresh: the counter is stored in Postgres.
Run `down` then `up` again: the count survives thanks to the volume.

## My notes
-
