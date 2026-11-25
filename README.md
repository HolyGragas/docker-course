# Docker Course – Labs & Notes

My hands-on work while following a full Docker course (containers, networking,
volumes, Dockerfiles, Compose, registries, and a final website project).

Everything runs locally with **Docker Desktop** (instead of an AWS EC2 instance).

## Structure

| Folder | Topic | What's inside |
|---|---|---|
| [01-basics](01-basics/) | Basic commands: pull, run, stop, inspect | `lab.ps1`, notes |
| [02-networking](02-networking/) | Networking drivers, bridge mode lab | `lab.ps1`, notes |
| [03-volumes](03-volumes/) | Data persistence: volumes & bind mounts | `lab.ps1`, notes |
| [04-dockerfile](04-dockerfile/) | Custom Dockerfiles, layers, RUN vs CMD, EXPOSE/COPY | `Dockerfile`, small app |
| [05-compose](05-compose/) | Docker Compose: web app + PostgreSQL | `compose.yaml`, Flask app |
| [06-registry](06-registry/) | Image lifecycle: tag, push, pull | notes, `lab.ps1` |
| [07-website-project](07-website-project/) | Final project: containerize a website | `Dockerfile`, static site |

Each folder has a `NOTES.md` to fill in while watching the course.

## Progress

- [ ] Intro: containers vs virtual machines, Docker architecture
- [ ] 01 – Basic commands
- [ ] 02 – Networking
- [ ] 03 – Volumes & bind mounts
- [ ] 04 – Custom Dockerfiles & image layers
- [ ] 05 – Docker Compose
- [ ] 06 – Registry (Docker Hub)
- [ ] 07 – Website project

## Requirements

- Docker Desktop (Windows) – check with `docker run hello-world`
- PowerShell for the `lab.ps1` scripts: run them from inside their folder, e.g.
  `cd 02-networking; .\lab.ps1`
  (if scripts are blocked: `powershell -ExecutionPolicy Bypass -File .\lab.ps1`)
