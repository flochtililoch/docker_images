FROM resin/armv7hf-debian-qemu
MAINTAINER flochtililoch
ENV REFRESHED_ON 2018-09-07
ENV VERSION 99ccdfc

RUN [ "cross-build-start" ]

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade -y

RUN \
  # Install Home-assistant-pi and dependencies
  apt-get install -y build-essential cmake git python python2.7-dev python-pip && \
  git clone git://github.com/nickmomrik/home-assistant-pi.git /home-assistant-pi && \
  git clone https://github.com/raspberrypi/userland /userland && \
  cd /userland && \
  ./buildme && \
  cd /home-assistant-pi && \
  git checkout ${VERSION} && \
  pip install psutil && \
  pip install paho-mqtt

RUN \
  mkdir -p /home/pi/home-assistant-pi/ && \
  cd /home/pi/home-assistant-pi/ && \
  ln -s /config/config.json

RUN [ "cross-build-end" ]

ENTRYPOINT python /home-assistant-pi/home-assistant-pi.py
