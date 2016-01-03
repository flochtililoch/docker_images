# Docker Images

## Node

### RPI

#### Build

```bash
docker build -t flochtililoch/rpi-node rpi/node
```

#### Run

```bash
docker run -it flochtililoch/rpi-node bash
```

### RPI-2

#### Build

```bash
docker build -t flochtililoch/rpi2-node rpi2/node
```

#### Run

```bash
docker run -it flochtililoch/rpi2-node bash
```

## Homebridge

### RPI

#### Build

```bash
docker build -t flochtililoch/rpi-homebridge rpi/homebridge
```

#### Run

```bash
docker run -d \
           -it \
           --name homebridge \
           --restart=always \
           --privileged \
           --net=host \
           -p 51826:51826 \
           -v ~/docker_images/config/homebridge:/root/.homebridge \
           -v /var/run/dbus:/var/run/dbus \
          flochtililoch/rpi-homebridge
```

### RPI-2

#### Build

```bash
docker build -t flochtililoch/rpi2-homebridge rpi2/homebridge
```

#### Run

```bash
docker run -d \
           -it \
           --name homebridge \
           --restart=always \
           --privileged \
           --net=host \
           -p 51826:51826 \
           -v ~/docker_images/config/homebridge:/root/.homebridge \
           -v /var/run/dbus:/var/run/dbus \
          flochtililoch/rpi2-homebridge
```

## LIRC Web

### RPI

#### Build

```bash
docker build -t flochtililoch/rpi-lirc-web rpi/lirc-web
```

#### Run

```bash
docker run -d \
           -it \
           --name lirc-web \
           --restart=always \
           --privileged \
           -p 3000:3000 \
           --device /dev/mem:/dev/mem \
           -v /lib/modules:/lib/modules \
           -v ~/docker_images/config/lirc:/etc/lirc \
           flochtililoch/rpi-lirc-web
```

### RPI-2

#### Build

```bash
docker build -t flochtililoch/rpi2-lirc-web rpi2/lirc-web
```

#### Run

```bash
docker run -d \
           -it \
           --name lirc-web \
           --restart=always \
           --privileged \
           -p 3000:3000 \
           --device /dev/mem:/dev/mem \
           -v /lib/modules:/lib/modules \
           -v ~/docker_images/config/lirc:/etc/lirc \
           flochtililoch/rpi2-lirc-web
```
