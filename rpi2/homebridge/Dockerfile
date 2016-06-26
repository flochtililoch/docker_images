FROM flochtililoch/rpi2-node:5.5.0
MAINTAINER flochtililoch

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade -y

RUN \
  # Install Homebridge dependencies
  apt-get install -y git python build-essential libavahi-compat-libdnssd-dev

RUN \
  # Install Homebridge
  npm install homebridge@0.3.4 -g

RUN \
  # Install Homebridge Misfit Bolt plugin
  npm install homebridge-misfit-bolt@0.1.2 -g

RUN \
  # Install Homebridge Wink plugin
  npm install homebridge-wink@1.1.1 -g

CMD homebridge
