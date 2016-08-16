#!/bin/bash

MAINTAINER=flochtililoch
CONTAINER=$(basename $@)
PLATFORM=$(uname -m)
IMAGE="$MAINTAINER/$PLATFORM-$CONTAINER"
DOCKERFILES="$(dirname $0)/../dockerfiles"
DOCKERFILE="$DOCKERFILES/$PLATFORM/$CONTAINER"

echo "Building image $IMAGE from $DOCKERFILE"
docker build -t $IMAGE $DOCKERFILE
