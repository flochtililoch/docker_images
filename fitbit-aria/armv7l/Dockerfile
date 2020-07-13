FROM balenalib/raspberrypi3-python:2.7-build
MAINTAINER flochtililoch
ENV REFRESHED_ON 2020-07-12

RUN [ "cross-build-start" ]

RUN \
  apt-get update && \
  apt-get upgrade -y
  
ENV VERSION=0e344f86fc19504684e6061b229b5f138e54af96
WORKDIR /root
ADD https://github.com/flochtililoch/helvetic/archive/${VERSION}.tar.gz ./
RUN \
  ls && \
  tar xvzf ${VERSION}.tar.gz && \
  rm ${VERSION}.tar.gz && \
  mv helvetic-${VERSION} helvetic

WORKDIR /root/helvetic
RUN pip install -r requirements.txt

WORKDIR /root/helvetic/helv_test

RUN [ "cross-build-end" ]

CMD ["python", "manage.py", "runserver", "0.0.0.0:80"]
