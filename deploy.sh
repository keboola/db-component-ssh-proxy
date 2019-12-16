#!/usr/bin/env bash

set -e

export REPOSITORY=keboola/db-component-ssh-proxy

docker-compose build app

docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD

docker tag $REPOSITORY:$TRAVIS_TAG $REPOSITORY:$TRAVIS_TAG

docker push $REPOSITORY:$TRAVIS_TAG
docker push $REPOSITORY:latest
