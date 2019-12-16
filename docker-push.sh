#!/usr/bin/env bash
set -e

docker-compose build app
docker login -u DOCKER_USERNAME -p DOCKER_PASSWORD
docker push keboola/db-component-ssh-proxy:latest
