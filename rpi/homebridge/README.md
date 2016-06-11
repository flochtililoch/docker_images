# Build

```bash
docker build -t flochtililoch/rpi-homebridge rpi/homebridge
```

# Run

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
