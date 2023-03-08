#!/bin/bash

SERVICE_NAME=$1
IMAGE_NAME=group1sechcmus/$2
TAG=$3

docker pull $IMAGE_NAME:$TAG
docker compose up -d $SERVICE_NAME
docker compose logs -f --tail=200 $SERVICE_NAME
