# 06 – Image lifecycle & registry

## Lifecycle
build → tag → push → (someone else) pull → run

## Naming
`<registry>/<username>/<repository>:<tag>`, e.g. `docker.io/myname/lab04-app:1.0`
(Docker Hub is the default registry, so `myname/lab04-app:1.0` is enough).

## Commands
```
docker login                                  # sign in to Docker Hub (you do this yourself)
docker tag lab04-app <dockerhub-user>/lab04-app:1.0
docker push <dockerhub-user>/lab04-app:1.0
docker rmi <dockerhub-user>/lab04-app:1.0     # delete local copy...
docker pull <dockerhub-user>/lab04-app:1.0    # ...and get it back from the registry
```

## Lab
`.\lab.ps1 -User <your-dockerhub-username>` (needs a free Docker Hub account and `docker login` first).

## My notes
-
