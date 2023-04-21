#!/bin/bash

SERVICE_NAME=$1
IMAGE_NAME=sehcmusgroup1/$2
TAG=$3

docker compose stop $SERVICE_NAME
docker rm $SERVICE_NAME
docker rmi $IMAGE_NAME:$TAG
docker load < /tmp/$IMAGE_NAME.tar
docker compose -f docker-compose.production.yml up -d $SERVICE_NAME
