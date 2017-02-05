FROM resin/armv7hf-debian-qemu
MAINTAINER flochtililoch
ENV REFRESHED_ON 2017-01-05

RUN [ "cross-build-start" ]

# Node
ENV NODE_VERSION 6.9.3
ENV PROC_VERSION armv7l
ADD https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-${PROC_VERSION}.tar.gz /
RUN \
  cd /usr/local/ && \
  tar --strip-components 1 -xzf /node-v${NODE_VERSION}-linux-${PROC_VERSION}.tar.gz && \
  rm -f /node-v${NODE_VERSION}-linux-${PROC_VERSION}.tar.gz

RUN [ "cross-build-end" ]
