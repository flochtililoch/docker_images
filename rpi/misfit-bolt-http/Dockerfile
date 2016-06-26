FROM flochtililoch/rpi-node:5.5.0
MAINTAINER flochtililoch

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade

RUN \
  # Install Misfit Bolt HTTP dependencies
  apt-get install -y git python build-essential \
  bluez bluetooth usbutils libudev-dev

RUN \
  # Install Homebridge Misfit Bolt plugin
  npm install misfit-bolt-http@0.1.2 -g

CMD hciconfig hci0 up && DEBUG=*misfit* misfit-bolt-http
