#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage ./`basename $0` image-name"
  echo "  i.e. ./`basename $0` node"
  exit 1
fi

MAINTAINER=$(cat ../MAINTAINER)
NAME=$(basename $1)
PLATFORMS=(
  "armv6l"
  "armv7l"
  "x86_64"
)

# http://stackoverflow.com/a/246128/237637
ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"
REFRESHED_ON=$(date +%Y-%m-%d)

echo "Creating new image $IMAGE for platform $PLATFORM"

for PLATFORM in ${PLATFORMS[@]}; do
  DIR="$ROOT/images/$NAME/$PLATFORM"
  mkdir -p $DIR
  echo "FROM <changeme>" > $DIR/Dockerfile
  echo "MAINTAINER $MAINTAINER" >> $DIR/Dockerfile
  echo "ENV REFRESHED_ON $REFRESHED_ON" >> $DIR/Dockerfile
done
