FROM flochtililoch/rpi2-node:5.3.0
MAINTAINER flochtililoch

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade && \

  # Install Homebridge
  apt-get install -y git python build-essential libavahi-compat-libdnssd-dev && \
  npm install homebridge@0.2.13 -g && \

  # Install Homebridge Misfit Bolt plugin
  apt-get install -y bluez bluetooth usbutils libudev-dev && \
  npm install homebridge-misfit-bolt@0.0.6 -g

CMD hciconfig hci0 up && homebridge
