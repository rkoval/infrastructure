#!/usr/bin/env bash
set -e

eval $(docker-machine env -u)
docker-compose build
docker-compose push

eval $(docker-machine env)
docker-compose pull
docker-compose up -d
