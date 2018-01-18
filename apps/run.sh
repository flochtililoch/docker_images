#!/bin/bash

APP=$(basename $1)
MODE=${2:-up -d}
SERVICE=${3:-}
HOST_IP=$(sudo ifconfig wlan0 | grep 'inet addr' | xargs | cut -d' ' -f2 | cut -d':' -f2)
HOST_IP_V6=$(sudo ifconfig wlan0 | grep 'inet6 addr' | xargs | cut -d' ' -f3)
MAINTAINER=$(cat ../MAINTAINER) PLATFORM=$(uname -m) docker-compose -f $APP/docker-compose.yml $MODE $SERVICE
