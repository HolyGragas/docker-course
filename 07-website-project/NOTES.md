# 07 – Project: containerizing a website

A static website served by **nginx** inside a container.

## Steps (as in the course)
1. Prepare the project (here: `site/` folder; in the course, a cloned website template)
2. Write the `Dockerfile`
3. Build and test the image locally
4. Tag and push it to Docker Hub
5. Verify by pulling and running it again

## Commands
```
docker build -t my-website .
docker run -d --name website -p 8081:80 my-website
# open http://localhost:8081
docker rm -f website

docker tag my-website <dockerhub-user>/my-website:1.0
docker push <dockerhub-user>/my-website:1.0
```

## Ideas to go further
- Replace `site/` with a free HTML template (e.g. from a git repo you clone)
- Add a `HEALTHCHECK` to the Dockerfile
- Serve it with Compose and add a second service

## My notes
-
