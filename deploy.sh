#!/usr/bin/env bash
set -e

eval $(docker-machine env -u)
docker login
docker buildx bake
docker-compose push

docker-machine env centos-docker-machine
eval $(docker-machine env centos-docker-machine)
docker-compose pull
docker-compose up -d
