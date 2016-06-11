# Build

```bash
docker build -t flochtililoch/rpi2-homebridge rpi2/homebridge
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
          flochtililoch/rpi2-homebridge
```
