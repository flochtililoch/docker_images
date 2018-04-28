FROM resin/armv7hf-debian-qemu
MAINTAINER flochtililoch
ENV REFRESHED_ON 2018-01-24
ENV VERSION 718f53d
ENV ARCH armv7l
ENV NODE_VERSION 4.4.6

RUN [ "cross-build-start" ]

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade -y

ADD https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-${ARCH}.tar.gz /
RUN \
  cd /usr/local/ && \
  tar --strip-components 1 -xzf /node-v${NODE_VERSION}-linux-${ARCH}.tar.gz && \
  rm -f /node-v${NODE_VERSION}-linux-${ARCH}.tar.gz && \
  
  # https://github.com/npm/uid-number/issues/3
  npm config set unsafe-perm true 

RUN \
  # Install Cloud9 and dependencies
  apt-get install -y build-essential git wget python sqlite && \
  git clone git://github.com/c9/core.git c9sdk && \
  cd c9sdk && \
  git checkout ${VERSION} && \
  scripts/install-sdk.sh

RUN [ "cross-build-end" ]

CMD node server.js
