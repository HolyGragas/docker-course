# Lab 03 - named volumes and bind mounts

Write-Host "== Named volume survives container removal =="
docker volume create lab03-data | Out-Null
docker run --rm -v lab03-data:/data busybox sh -c 'echo written inside container $(hostname) at $(date) > /data/note.txt'
Write-Host "First container is gone. A new container reads:"
docker run --rm -v lab03-data:/data busybox cat /data/note.txt
docker volume rm lab03-data | Out-Null

Write-Host "`n== Bind mount writes straight to this PC =="
$hostDir = Join-Path $PSScriptRoot 'bind-data'
New-Item -ItemType Directory -Force $hostDir | Out-Null
docker run --rm -v "${hostDir}:/data" busybox sh -c "echo 'hello from a container' > /data/from-container.txt"
Write-Host "File on the host ($hostDir):"
Get-Content (Join-Path $hostDir 'from-container.txt')
