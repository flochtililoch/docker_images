FROM flochtililoch/armv6l-node:6.8.1
MAINTAINER flochtililoch
ENV REFRESHED_ON 2017-01-04

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
