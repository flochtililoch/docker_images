#!/bin/bash

APP=$(basename $1)
MODE=${2:-up}
SERVICE=${3:-}
echo "Running app $APP"
MAINTAINER=$(cat ../MAINTAINER) PLATFORM=$(uname -m) docker-compose -f $APP/docker-compose.yml $MODE $SERVICE
