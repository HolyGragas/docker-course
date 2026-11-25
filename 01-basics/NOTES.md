# 01 – Basic Docker commands

## Key ideas
- **Image**: read-only template (app + dependencies). **Container**: a running instance of an image.
- Images come from a **registry** (default: Docker Hub).

## Cheat sheet

| Command | What it does |
|---|---|
| `docker pull nginx:alpine` | Download an image |
| `docker images` | List local images |
| `docker run -d --name web -p 8080:80 nginx:alpine` | Start a container in the background, map host port 8080 → container port 80 |
| `docker ps` / `docker ps -a` | Running / all containers |
| `docker logs web` | Show a container's output |
| `docker exec -it web sh` | Open a shell inside a running container |
| `docker inspect web` | Full JSON details (IP, mounts, config) |
| `docker stop web` / `docker start web` | Stop / start again |
| `docker rm web` | Delete a stopped container |
| `docker rmi nginx:alpine` | Delete an image |

## Lab
Run `.\lab.ps1` and then open http://localhost:8080 while it pauses.

## My notes
-
