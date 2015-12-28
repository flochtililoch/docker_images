FROM resin/rpi-raspbian
MAINTAINER flochtililoch

# Node
ENV NODE_VERSION 5.3.0
ENV PROC_VERSION armv6l
ADD https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-${PROC_VERSION}.tar.gz /
RUN \
  cd /usr/local/ && \
  tar --strip-components 1 -xzf /node-v${NODE_VERSION}-linux-${PROC_VERSION}.tar.gz && \
  rm -f node-v${NODE_VERSION}-linux-${PROC_VERSION}.tar.gz

# Define working directory
WORKDIR /data
