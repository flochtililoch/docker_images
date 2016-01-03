# LIRC WEB
# Build: docker build -t flochtililoch/lirc_web .
# Run: docker run --restart=always -d -p 3000:3000 --device /dev/mem:/dev/mem -v /lib/modules:/lib/modules --privileged -it flochtililoch/lirc_web
########

FROM resin/rpi-raspbian
MAINTAINER flochtililoch

ENV node_version=v5.3.0
ENV node_arch=armv6l
ENV gpio_in=23 gpio_out=22
ENV lirc_web=/home/lirc_web

ADD https://nodejs.org/dist/${node_version}/node-${node_version}-linux-${node_arch}.tar.gz /

RUN \
  # Update system
  apt-get update && \
  apt-get upgrade && \

  # Install LIRC
  apt-get install lirc -y && \
  echo 'lirc_dev' >> /etc/modules && \
  echo 'lirc_rpi gpio_in_pin=${gpio_in} gpio_out_pin=${gpio_out}' >> /etc/modules && \

  # Install Node
  tar -xvf /node-${node_version}-linux-${node_arch}.tar.gz && \
  sudo cp -R node-${node_version}-linux-${node_arch}/* /usr/local/ && \
  rm -rf node-${node_version}-linux-${node_arch} && \
  rm node-${node_version}-linux-${node_arch}.tar.gz && \

  # Install lirc-web
  apt-get install git -y && \
  git clone https://github.com/alexbain/lirc_web.git $lirc_web && \
  cd $lirc_web && \
  /usr/local/bin/npm install

# LIRC Configuration
COPY etc/lirc/*.conf  /etc/lirc/

WORKDIR $lirc_web
CMD /etc/init.d/lirc start && node app.js
