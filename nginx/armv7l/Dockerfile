FROM balenalib/armv7hf-debian
MAINTAINER flochtililoch
ENV REFRESHED_ON 2019-09-14
ENV VERSION 0.0.1

RUN [ "cross-build-start" ]

RUN \
  apt-get update && \
  apt-get upgrade -y

RUN \
  apt-get install nginx -y

RUN [ "cross-build-end" ]

CMD /etc/init.d/nginx start
