# Build

```bash
docker build -t flochtililoch/rpi2-misfit-bolt-http rpi2/misfit-bolt-http
```

# Run

```bash
docker run -d \
           -it \
           --name misfit-bolt-http \
           --restart=always \
           --privileged \
           --net=host \
           -p 3000:3000 \
           -v /var/run/dbus:/var/run/dbus \
          flochtililoch/rpi2-misfit-bolt-http
```
