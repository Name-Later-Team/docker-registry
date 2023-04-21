#!/bin/bash

IMAGE_NAME=sehcmusgroup1/$1
TAG=$2

docker tag $IMAGE_NAME $IMAGE_NAME:$TAG
docker push $IMAGE_NAME:$TAG
