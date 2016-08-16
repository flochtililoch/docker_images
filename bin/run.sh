#!/bin/bash

CONTAINER=$(basename $@)
PLATFORM=$(uname -m)
DOCKERFILES="../dockerfiles"
RUN=$(cat $DOCKERFILES/$PLATFORM/$CONTAINER/RUN.txt)

echo "Starting container $CONTAINER"
echo $RUN | bash
