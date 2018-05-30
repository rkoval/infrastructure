#!/usr/bin/env bash
set -e

eval $(docker-machine env -u)
docker-compose down -v
docker-compose build
docker-compose up
