# 03 – Data persistence: volumes & bind mounts

A container's own filesystem is deleted with the container. To keep data:

| | Named volume | Bind mount |
|---|---|---|
| Syntax | `-v mydata:/data` | `-v C:\path\on\host:/data` |
| Managed by | Docker (`docker volume ls`) | You (any host folder) |
| Typical use | Databases, app data | Source code during development, config files |

## Commands
```
docker volume create mydata
docker volume ls
docker volume inspect mydata
docker volume rm mydata
```

## Lab
`.\lab.ps1`:
1. Writes a file into a **named volume**, deletes the container, starts a new one → file is still there.
2. Writes a file through a **bind mount** → it appears in `03-volumes\bind-data` on your PC.

## My notes
-
