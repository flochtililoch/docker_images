FROM flochtililoch/armv7l-node:6.9.3
MAINTAINER flochtililoch
ENV REFRESHED_ON 2020-08-24
ENV VERSION 0.0.7

RUN [ "cross-build-start" ]

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade -y

RUN \
  # https://github.com/npm/uid-number/issues/3
  npm config set unsafe-perm true 

RUN \
  # Install LIRC and git
  apt-get install lirc git -y

RUN \
  # Install lirc-state-api
  npm install -g lirc-state-api@${VERSION}

RUN [ "cross-build-end" ]

CMD lirc-state-api -c=/root/config.json -p=3001
