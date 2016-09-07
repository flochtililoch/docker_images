FROM flochtililoch/armv7l-node:5.5.0
MAINTAINER flochtililoch

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade -y

RUN \
  # Install LIRC
  apt-get install lirc -y

RUN \
  # Install lirc-web
  npm install -g lirc_web@0.3.1

CMD lirc_web
