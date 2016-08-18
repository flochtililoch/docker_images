#!/bin/bash

MAINTAINER=flochtililoch
CONTAINER=$(basename $@)
PLATFORM=$(uname -m)
DOCKERFILES="../dockerfiles"
OPTIONS=$(cat $DOCKERFILES/$CONTAINER/run.opts)
RUN="docker --name=$CONTAINER $OPTIONS $MAINTAINER/$PLATFORM-$CONTAINER"

echo "Starting container $CONTAINER"
echo $RUN | bash
