FROM flochtililoch/armv7l-node:5.5.0
MAINTAINER flochtililoch
ENV REFRESHED_ON 2018-07-17
ENV VERSION 0.3.1

RUN [ "cross-build-start" ]

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade -y

RUN \
  # Install LIRC
  apt-get install lirc -y

RUN \
  # https://github.com/npm/uid-number/issues/3
  npm config set unsafe-perm true 

RUN \
  # Install lirc-web
  npm install -g lirc_web@${VERSION}

RUN [ "cross-build-end" ]

CMD lirc_web
