# Docker Files

Repository hosting Dockerfile and few script helping to build, debug and run containers.

## Platforms

- `armv6l`: Raspberry Pi
- `armv7l`: Raspberry Pi 2

## Containers

- `homebridge`: [Homebridge](https://github.com/nfarina/homebridge) (with [homebridge-misfit-bolt](https://github.com/flochtililoch/homebridge-misfit-bolt) plugin)
- `lirc-web`: [LIRC Web](https://github.com/alexbain/lirc_web)
- `misfit-bolt-http`: [Misfit Bolt HTTP](https://github.com/flochtililoch/misfit-bolt-http)
- `node`: [NodeJS](https://nodejs.org/en/)

## Images

- `homebridge`: [armv6l](https://hub.docker.com/r/flochtililoch/armv6l-homebridge/) | [armv7l](https://hub.docker.com/r/flochtililoch/armv7l-homebridge/)
- `lirc-web`: [armv6l](https://hub.docker.com/r/flochtililoch/armv6l-lirc-web/) | [armv7l](https://hub.docker.com/r/flochtililoch/armv7l-lirc-web/)
- `misfit-bolt-http`: [armv6l](https://hub.docker.com/r/flochtililoch/armv6l-misfit-bolt-http/) | [armv7l](https://hub.docker.com/r/flochtililoch/armv7l-misfit-bolt-http/)
- `node`: [armv6l](https://hub.docker.com/r/flochtililoch/armv6l-node/) | [armv7l](https://hub.docker.com/r/flochtililoch/armv7l-node/)

## Build

```bash
./build.sh <CONTAINER>
```

## Debug

```bash
./debug.sh <CONTAINER>
```

## Run

```bash
./run.sh <CONTAINER>
```

## Stop & Clean

```bash
./clean.sh <CONTAINER>
```
