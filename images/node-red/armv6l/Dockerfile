FROM flochtililoch/armv6l-node:6.9.3
MAINTAINER flochtililoch
ENV REFRESHED_ON 2017-01-22

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade -y

RUN \
  # Install Bluetooth dependencies
  apt-get install -y git python build-essential \
  bluez bluetooth usbutils libudev-dev

RUN \
  # Install Node Red
  npm install node-red@0.16.1 -g --unsafe-perm

CMD hciconfig hci0 up && node-red
