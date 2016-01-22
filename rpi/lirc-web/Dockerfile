FROM flochtililoch/rpi-node:5.5.0
MAINTAINER flochtililoch

ENV gpio_in=23 gpio_out=22

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade

RUN \
  # Install LIRC
  apt-get install lirc -y && \
  echo 'lirc_dev' >> /etc/modules && \
  echo 'lirc_rpi gpio_in_pin=${gpio_in} gpio_out_pin=${gpio_out}' >> /etc/modules

RUN \
  # Install lirc-web
  npm install -g lirc_web@0.2.4

CMD /etc/init.d/lirc start && lirc_web
