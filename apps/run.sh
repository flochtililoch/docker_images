#!/bin/bash

APP=$(basename $1)
HOST_IP_V6=$(sudo ifconfig wlan0 | grep 'inet6 addr' | xargs | cut -d' ' -f3)
HOST_IP=$(sudo ifconfig wlan0 | grep 'inet addr' | xargs | cut -d' ' -f2 | cut -d':' -f2)
MAINTAINER=$(cat ../MAINTAINER)
MODE=${2:-up -d}
PLATFORM=$(uname -m)
SERVICE=${3:-}

MAINTAINER=$MAINTAINER PLATFORM=$PLATFORM HOST_IP=$HOST_IP HOST_IP_V6=$HOST_IP_V6 docker-compose -f $APP/docker-compose.yml $MODE $SERVICE
