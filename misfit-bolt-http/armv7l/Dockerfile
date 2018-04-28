FROM flochtililoch/armv7l-node:5.5.0
MAINTAINER flochtililoch
ENV REFRESHED_ON 2017-01-04

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade -y

RUN \
  # Install Bluetooth dependencies
  apt-get install -y git python build-essential \
  bluez bluetooth usbutils libudev-dev

RUN \
  # Install Misfit Bolt HTTP
  npm install misfit-bolt-http@1.0.1 -g

CMD hciconfig hci0 up && misfit-bolt-http
