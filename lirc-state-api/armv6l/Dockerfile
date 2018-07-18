FROM flochtililoch/armv6l-node:6.9.3
MAINTAINER flochtililoch
ENV REFRESHED_ON 2017-10-17
ENV VERSION 0.0.3

RUN [ "cross-build-start" ]

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade -y

RUN \
  # Install LIRC
  apt-get install lirc -y

RUN \
  npm install -g lirc-state-api@${VERSION}

RUN [ "cross-build-end" ]

CMD lirc-state-api -c=/root/config.json -p=3001
