FROM debian:jessie
MAINTAINER flochtililoch
ENV REFRESHED_ON 2017-02-04

# Node
ENV NODE_VERSION 6.9.3
ENV PROC_VERSION x64
ADD https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-${PROC_VERSION}.tar.gz /
RUN \
  cd /usr/local/ && \
  tar --strip-components 1 -xzf /node-v${NODE_VERSION}-linux-${PROC_VERSION}.tar.gz && \
  rm -f /node-v${NODE_VERSION}-linux-${PROC_VERSION}.tar.gz
