FROM flochtililoch/rpi-node:5.3.0
MAINTAINER flochtililoch

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade

RUN \
  # Install Homebridge dependencies
  apt-get install -y git python build-essential libavahi-compat-libdnssd-dev && \

  # Install Homebridge Misfit Bolt plugin dependencies
  apt-get install -y bluez bluetooth usbutils libudev-dev

RUN \
  # Install Homebridge
  npm install homebridge@0.2.13 -g && \

  # Install Homebridge Misfit Bolt plugin
  npm install homebridge-misfit-bolt@0.0.6 -g

CMD hciconfig hci0 up && homebridge
