#!/usr/bin/env bash
set -e


echo "you must be \`eval\`'d into centos to build marketing-site because there's some segfault bug with docker for mac when cross building!!"
set -x
eval $(docker-machine env -u)
docker login
docker buildx bake "$@"
docker compose push "$@"

docker-machine env centos-docker-machine
eval $(docker-machine env centos-docker-machine)
docker compose pull "$@"
docker compose up -d "$@"
