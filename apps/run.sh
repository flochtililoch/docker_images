#!/bin/bash

APP=$(basename $@)

echo "Running app $APP"
MAINTAINER=$(cat ../MAINTAINER) PLATFORM=$(uname -m) docker-compose -f $APP/docker-compose.yml up -d