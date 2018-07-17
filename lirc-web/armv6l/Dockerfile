FROM flochtililoch/armv6l-node:5.5.0
MAINTAINER flochtililoch
ENV REFRESHED_ON 2018-07-16

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade -y

RUN \
  # Install LIRC
  apt-get install lirc -y

RUN \
  # Install lirc-web
  npm install -g git+https://git@github.com/flochtililoch/lirc_web#73c29aac1734a18e083780c4f49861063a4cff33

CMD lirc_web
