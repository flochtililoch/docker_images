#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage ./`basename $0` image-name tag [platform] [id]"
  echo "  i.e. ./`basename $0` node 6.9.4 armv7l 245002e62dc7"
  exit 1
fi

MAINTAINER=$(cat ../MAINTAINER)
NAME=$(basename $1)
TAG=${2:-latest}
PLATFORM=${3:-$(uname -m)}
ID=${4:-$(docker images | grep $MAINTAINER/$PLATFORM-$NAME | head -1 | awk '{print $3}')}
docker tag $ID $MAINTAINER/$PLATFORM-$NAME:$TAG
