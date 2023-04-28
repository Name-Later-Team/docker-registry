#!/bin/bash

SERVICE_NAME=$1
IMAGE_NAME=sehcmusgroup1/$2
TAG=$3

docker pull $IMAGE_NAME:$TAG
docker compose -f docker-compose.yml up -d $SERVICE_NAME
