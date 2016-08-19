#!/bin/bash

MAINTAINER=$(cat MAINTAINER)
CONTAINER=$(basename $@)
PLATFORM=$(uname -m)
OPTIONS=$(cat $CONTAINER/run.opts)
RUN="docker run --name=$CONTAINER $OPTIONS $MAINTAINER/$PLATFORM-$CONTAINER"

echo "Starting container $CONTAINER"
echo $RUN | bash
