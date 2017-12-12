#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage ./`basename $0` image-name [tag] [platform]"
  echo "  i.e. ./`basename $0` node armv7l"
  exit 1
fi

MAINTAINER=$(cat ../MAINTAINER)
NAME=$(basename $1)
TAG=${2:-latest}
PLATFORM=${3:-$(uname -m)}
IMAGE="$MAINTAINER/$PLATFORM-$NAME"
REFFILE="$NAME/$PLATFORM"
REF=$(cat $REFFILE)

docker pull $REF
docker tag $REF $IMAGE:$TAG
docker push $REF $IMAGE:$TAG
