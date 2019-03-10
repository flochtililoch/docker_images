FROM debian:stretch
MAINTAINER flochtililoch
ENV REFRESHED_ON 2018-03-15

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade -y

RUN \
  apt-get install cron virtualenv python3-pip build-essential curl libxml2 libxslt1.1 zlib1g python3 python-pip -y

RUN \
  easy_install pip && \
  virtualenv -p python3 ~/vdirsyncer_env && \
  ~/vdirsyncer_env/bin/pip install vdirsyncer && \
  pip install --user --ignore-installed vdirsyncer

ADD crontab /etc/cron.d/vdirsyncer-cron
RUN chmod 0644 /etc/cron.d/vdirsyncer-cron
RUN crontab /etc/cron.d/vdirsyncer-cron

CMD ["cron", "-f"]
