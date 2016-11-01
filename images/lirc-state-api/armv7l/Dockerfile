FROM flochtililoch/armv7l-node:6.8.1
MAINTAINER flochtililoch

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade -y

RUN \
  # Install LIRC
  apt-get install lirc -y

RUN \
  npm install -g lirc-state-api@0.0.2

CMD bash
