#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage ./`basename $0` image-name [platform]"
  echo "  i.e. ./`basename $0` node armv7l"
  exit 1
fi

MAINTAINER=$(cat ../MAINTAINER)
NAME=$(basename $1)
PLATFORM=${2:-$(uname -m)}
IMAGE="$MAINTAINER/$PLATFORM-$NAME"
DOCKERFILE="$NAME/$PLATFORM"

docker build -t $IMAGE $DOCKERFILE
