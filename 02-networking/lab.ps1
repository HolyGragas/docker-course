# Lab 02 - default bridge vs user-defined bridge

Write-Host "== Default bridge: name lookup fails =="
docker run -d --name lab02-web-default nginx:alpine | Out-Null
docker run --rm busybox sh -c "ping -c 1 -W 2 lab02-web-default || echo '-> not reachable by name on the default bridge'"
docker rm -f lab02-web-default | Out-Null

Write-Host "`n== User-defined bridge: containers find each other by name =="
docker network create lab02-net | Out-Null
docker run -d --name web --network lab02-net nginx:alpine | Out-Null
docker run --rm --network lab02-net busybox sh -c "ping -c 1 web && wget -qO- http://web | grep title"

Write-Host "`n== Containers on lab02-net =="
docker network inspect lab02-net -f '{{range .Containers}}{{.Name}} {{.IPv4Address}}{{println}}{{end}}'

# clean up
docker rm -f web | Out-Null
docker network rm lab02-net | Out-Null
