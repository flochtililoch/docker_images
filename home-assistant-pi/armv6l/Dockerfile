FROM resin/rpi-raspbian
MAINTAINER flochtililoch
ENV REFRESHED_ON 2019-08-11
ENV VERSION 99ccdfc

RUN [ "cross-build-start" ]

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade -y

RUN \
  # Install Home-assistant-pi and dependencies
  apt-get install -y build-essential cmake git libnss-mdns dbus avahi-discover avahi-utils python python2.7-dev python-pip && \
  git clone git://github.com/nickmomrik/home-assistant-pi.git /home-assistant-pi && \
  cd /home-assistant-pi && \
  git checkout ${VERSION} && \
  pip install psutil && \
  pip install paho-mqtt

RUN \
  mkdir -p /home/pi/home-assistant-pi/ && \
  cd /home/pi/home-assistant-pi/ && \
  ln -s /config/config.json

RUN [ "cross-build-end" ]

COPY ./home-assistant-pi.sh /usr/local/bin/home-assistant-pi.sh

CMD /usr/local/bin/home-assistant-pi.sh
