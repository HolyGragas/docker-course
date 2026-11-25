# Lab 01 - pull, run, inspect, stop, remove
docker pull nginx:alpine
docker images nginx

docker run -d --name lab01-web -p 8080:80 nginx:alpine
docker ps --filter name=lab01-web

Write-Host "`nIP address inside Docker's bridge network:"
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' lab01-web

Write-Host "`nResponse from http://localhost:8080 :"
Start-Sleep -Seconds 2
[regex]::Match((Invoke-WebRequest -UseBasicParsing http://localhost:8080).Content, '<title>.*</title>').Value

Read-Host "`nOpen http://localhost:8080 in your browser, then press Enter to clean up"

docker logs lab01-web --tail 5
docker stop lab01-web
docker rm lab01-web
