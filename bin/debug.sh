#!/bin/bash

CONTAINER=$(basename $@)

./clean.sh $CONTAINER
./build.sh $CONTAINER
./run.sh $CONTAINER
docker attach $CONTAINER
