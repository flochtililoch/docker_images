# Docker Files

Repository hosting Dockerfile and few script helping to build, debug and run containers.

## Platforms

- `armv6l`: Raspberry Pi
- `armv7l`: Raspberry Pi 2

## Containers

- `homebridge`: Homebridge (with misfit-bolt and wink plugins)
- `lirc-web`: LIRC Web
- `misfit-bolt-http`: Misfit Bolt HTTP
- `node`: NodeJS

## Build

```bash
./bin/build.sh <CONTAINER>
```

## Debug

```bash
./bin/debug.sh <CONTAINER>
```

## Run

```bash
./bin/run.sh <CONTAINER>
```

## Stop & Clean

```bash
./bin/clean.sh <CONTAINER>
```
