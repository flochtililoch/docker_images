FROM flochtililoch/armv6l-node:6.9.3
MAINTAINER flochtililoch
ENV REFRESHED_ON 2018-07-16
ENV VERSION e10c05cf63c22c4229e163640f1d8dc5a69663fb

RUN [ "cross-build-start" ]

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade -y

RUN \
  # Install LIRC
  apt-get install lirc -y

RUN \
  npm install -g git+https://git@github.com/flochtililoch/lirc-state-api@${VERSION}

RUN [ "cross-build-end" ]

CMD lirc-state-api -c=/root/config.json -p=3001
