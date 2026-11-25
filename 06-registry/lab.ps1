# Lab 06 - tag, push and pull an image on Docker Hub
# Usage: .\lab.ps1 -User <your-dockerhub-username>   (run 'docker login' first)
param([Parameter(Mandatory = $true)][string]$User)

$image = "$User/lab04-app"

docker build -t lab04-app (Join-Path $PSScriptRoot '..\04-dockerfile')
docker tag lab04-app "${image}:1.0"
docker tag lab04-app "${image}:latest"
docker images $image

docker push "${image}:1.0"
docker push "${image}:latest"

Write-Host "`nRemoving the local copy and pulling it back from Docker Hub..."
docker rmi "${image}:1.0" | Out-Null
docker pull "${image}:1.0"
