#!/bin/bash

USER=$1
IP=$2
IMAGE_NAME=group1sechcmus/$3

docker save $IMAGE_NAME > /tmp/$IMAGE_NAME.tar && scp /tmp/$IMAGE_NAME.tar $USER@$IP:/tmp
