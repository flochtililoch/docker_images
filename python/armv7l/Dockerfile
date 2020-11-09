FROM balenalib/armv7hf-debian-python:build
MAINTAINER flochtililoch
ENV REFRESHED_ON 2020-11-09

RUN [ "cross-build-start" ]

COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt

RUN [ "cross-build-end" ]

CMD ["python3", "/main/main.py"]
