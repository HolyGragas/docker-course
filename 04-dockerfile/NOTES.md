# 04 – Custom Dockerfiles & image layers

## Instructions used in `Dockerfile`
| Instruction | Meaning |
|---|---|
| `FROM` | Base image to start from |
| `WORKDIR` | Working directory for the next instructions |
| `COPY` | Copy files from the build context into the image |
| `RUN` | Runs **at build time**, result is saved as a new layer (install packages, …) |
| `EXPOSE` | Documents the port the app listens on (does **not** publish it: use `-p`) |
| `CMD` | Default command **when the container starts** (only the last `CMD` counts) |

## Layers
Each `RUN`, `COPY`, `ADD` creates a layer. Layers are cached: if a step and
everything before it is unchanged, Docker reuses it. That's why
`requirements.txt` is copied and installed **before** the rest of the code.

See them with `docker history lab04-app`.

## Try it
```
docker build -t lab04-app .
docker run --rm -p 5000:5000 lab04-app
# open http://localhost:5000
docker history lab04-app
```
Change `app.py` and rebuild: notice the `pip install` step says `CACHED`.

## My notes
-
