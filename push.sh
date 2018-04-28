#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage ./`basename $0` image-name [tag] [platform]"
  echo "  i.e. ./`basename $0` node 6.9.4 armv7l"
  exit 1
fi

MAINTAINER=$(cat ./MAINTAINER)
NAME=$(basename $1)
TAG=${2:-latest}
PLATFORM=${3:-$(uname -m)}

docker push $MAINTAINER/$PLATFORM-$NAME:$TAG
