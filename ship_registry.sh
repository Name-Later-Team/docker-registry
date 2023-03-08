#!/bin/bash

IMAGE_NAME=group1sechcmus/$1
TAG=$2

docker tag $IMAGE_NAME $IMAGE_NAME:$TAG
docker push $IMAGE_NAME:$TAG
