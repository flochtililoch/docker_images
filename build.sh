#!/bin/bash

MAINTAINER=flochtililoch
CONTAINER=$(basename $@)
PLATFORM=$(uname -m)
IMAGE="$MAINTAINER/$PLATFORM-$CONTAINER"
DOCKERFILE="$CONTAINER/$PLATFORM"

echo "Building image $IMAGE from $DOCKERFILE"
docker build -t $IMAGE $DOCKERFILE
