FROM resin/armv7hf-debian-qemu
MAINTAINER flochtililoch
ENV REFRESHED_ON 2017-11-04
ENV VERSION 6.9.3

RUN [ "cross-build-start" ]

ENV ARCH armv7l
ADD https://nodejs.org/dist/v${VERSION}/node-v${VERSION}-linux-${ARCH}.tar.gz /
RUN \
  cd /usr/local/ && \
  tar --strip-components 1 -xzf /node-v${VERSION}-linux-${ARCH}.tar.gz && \
  rm -f /node-v${VERSION}-linux-${ARCH}.tar.gz && \
  
  # https://github.com/npm/uid-number/issues/3
  npm config set unsafe-perm true 

RUN [ "cross-build-end" ]
