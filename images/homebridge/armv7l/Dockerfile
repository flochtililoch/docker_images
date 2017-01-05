FROM flochtililoch/armv7l-node:6.8.1
MAINTAINER flochtililoch
ENV REFRESHED_ON 2017-01-04

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade -y

RUN \
  # Install Homebridge dependencies
  apt-get install -y git python build-essential libavahi-compat-libdnssd-dev

RUN \
  # Install Homebridge
  npm install homebridge@0.4.6 -g --unsafe-perm

RUN \
  # Install Homebridge Misfit Bolt plugin
  npm install homebridge-misfit-bolt@0.1.4 -g && \

  # Install Homebridge LIRC Accessory plugin
  npm install homebridge-lirc-accessory@0.0.1 -g && \

  # Install Homebridge Pivot Power Genius plugin
  npm install homebridge-pivot-power-genius@0.0.1 -g

CMD homebridge
