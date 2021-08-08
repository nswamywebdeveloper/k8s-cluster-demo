#!/bin/bash
echo If K8s cluster is already running then the Port 80 wont be available
echo "docker container run --name apache2 -d --rm -p 81:80 metamagic/apache2"
docker container run --name apache2 -d --rm -p 81:80 metamagic/apache2
