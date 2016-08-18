#!/bin/bash

CONTAINER=$(basename $@)

echo "Stopping and removing container $CONTAINER"
docker stop $CONTAINER
docker rm $CONTAINER
