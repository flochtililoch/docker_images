FROM balenalib/raspberrypi3-python:2.7-build
MAINTAINER flochtililoch
ENV REFRESHED_ON 2021-05-29

RUN [ "cross-build-start" ]

RUN \
  apt-get update && \
  apt-get upgrade -y
  
ENV VERSION=3c83ef2d191e184291a9502d595130090f91de86
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
