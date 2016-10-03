# Shairport Sync dockerized for C.H.I.P.

Airplay Sink for C.H.I.P running in a Docker container.

## Setup

### Install Docker on C.H.I.P. (abreviated notes from Hypriot, see [full post](http://blog.hypriot.com/post/install-docker-on-chip-computer/))

```bash
$ sudo su
$ curl -sSL https://github.com/DieterReuter/arm-docker-fixes/raw/master/002-fix-install-docker-on-chip-computer/apply-fix-002.sh | bash
$ curl -sSL https://downloads.hypriot.com/chip-kernel-4.4.11-hypriotos.tar.bz2 | tar xvfj - -C /
$ reboot
$ sudo usermod -aG docker $(whoami)
```

### Install Docker Compose

```bash
$ apt-get -y update && apt-get -y install python-pip
$ sudo pip install docker-compose
```

### Start container

```bash
$ git clone https://github.com/flochtililoch/dockers.git && cd dockers/apps
$ ./run.sh shairport-sync/
```