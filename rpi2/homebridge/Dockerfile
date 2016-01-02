# Homebridge
# Build: docker build -t flochtililoch/homebridge .
# Run: docker run --restart=always -d -p 51826:51826 --device /dev/mem:/dev/mem -v /lib/modules:/lib/modules -v /var/run/dbus:/var/run/dbus --privileged -it --net=host flochtililoch/homebridge
########

FROM flochtililoch/node_armv7l:4.2.1
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

CMD homebridge
