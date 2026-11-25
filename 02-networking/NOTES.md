# 02 – Docker networking

## Network drivers
| Driver | Use |
|---|---|
| `bridge` (default) | Private network on one host; containers reach the outside via NAT |
| user-defined bridge | Like bridge, **plus DNS**: containers find each other by name |
| `host` | Container shares the host's network (no isolation, no port mapping) |
| `none` | No networking at all |
| `overlay` | Spans several hosts (Swarm) |

## Commands
```
docker network ls
docker network create mynet
docker run -d --name a --network mynet nginx:alpine
docker network inspect mynet
docker network connect / disconnect mynet <container>
```

## Lab (bridge mode)
`.\lab.ps1` shows that:
1. On the **default** bridge, containers can't resolve each other by name.
2. On a **user-defined** bridge, they can (`ping web`, `wget http://web`).

## My notes
-
