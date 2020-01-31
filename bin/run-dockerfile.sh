#!/bin/bash

SERVICE=$1
VOLUME=`pwd`
DOCKER_COMPOSE_DIR=~/Workspace/dockerfiles

cd ${DOCKER_COMPOSE_DIR}
source ./.env

docker-compose run -v ${VOLUME}:${WORK} --rm --no-deps ${SERVICE}
