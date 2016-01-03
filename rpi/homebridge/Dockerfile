FROM flochtililoch/rpi-node:5.3.0
MAINTAINER flochtililoch

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade && \

  # Install Homebridge
  apt-get install -y git python build-essential libavahi-compat-libdnssd-dev && \
  npm install homebridge -g && \

  # Install Homebridge Misfit Bolt plugin
  apt-get install -y bluez bluetooth usbutils libudev-dev && \
  npm install homebridge-misfit-bolt -g

CMD hciconfig hci0 up && homebridge
