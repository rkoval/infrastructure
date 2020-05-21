#!/usr/bin/env bash
set -e
docker-machine regenerate-certs --client-certs centos-docker-machine
docker-machine regenerate-certs centos-docker-machine
