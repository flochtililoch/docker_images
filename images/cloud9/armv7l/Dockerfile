FROM flochtililoch/armv7l-node:6.9.3
MAINTAINER flochtililoch
ENV REFRESHED_ON 2018-01-23
ENV VERSION 718f53d

RUN [ "cross-build-start" ]

RUN \
  apt-get install -y build-essential git && \
  git clone git://github.com/c9/core.git c9sdk && \
  git checkout ${VERSION} && \
  cd c9sdk && \
  scripts/install-sdk.sh

RUN [ "cross-build-end" ]

CMD node server.js
