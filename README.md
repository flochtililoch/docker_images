# Docker Files

Repository hosting Dockerfile and few script helping to build, debug and run containers.


## Platforms

- `armv6l`: Raspberry Pi
- `armv7l`: Raspberry Pi 2


## Images definitions

### Directory structure

```
[root]
 │
 ├─ <image_base_name>
 │  ├── <platform_id>
 │  │   └── Dockerfile
 │  ├── ...
 │  ├── config
 │  └── run.opts
 │  ...
 ├─ MAINTAINER
 ├─ build.sh
 ├─ clean.sh
 ├─ debug.sh
 └─ run.sh
```

#### `<image_base_name>`

Spaceless string representing the image. It will be used by the scripts to properly map to the correct files. Used to generate images names.

#### `<platform_id>`

String representing the platform as returned by the `uname -m` command. Used to generate images names.

#### `Dockerfile`

See [Dockerfile](https://docs.docker.com/engine/reference/builder/).

#### `config` (optional)

Stores configuration files to be mounted via [`-v` option](https://docs.docker.com/engine/reference/commandline/run/#/mount-volume-v-read-only) of [`docker run`](https://docs.docker.com/engine/reference/run/#docker-run-reference) command.

#### `run.opts`

Defines options to be passed to the [`docker run`](https://docs.docker.com/engine/reference/run/#docker-run-reference) command.

#### `MAINTAINER`
Text file containing the name of the maintainer. Used to generate images names.

#### `build.sh`

Script to build the image as specified in the `Dockerfile`. Image name will be named using the following pattern: `<MAINTAINER>/<platform_id>-<image_base_name>`.

*Usage:*
```bash
./build.sh <CONTAINER_NAME>
```

#### `run.sh`

Script that will run a container from an image, using the `run.opts` file to determine which options to pass to `docker run` command. Container will be named after `<image_base_name>`.

*Usage:*
```bash
./run.sh <CONTAINER_NAME>
```

#### `clean.sh`

Script that stops and deletes a specified container.

*Usage:*
```bash
./clean.sh <CONTAINER_NAME>
```

#### `debug.sh`

Script that stop, delete a container, re-build the image, run the container and attach console to it.

*Usage:*
```bash
./debug.sh <CONTAINER_NAME>
```

## Existing Images Definitions

- `homebridge`: [Homebridge](https://github.com/nfarina/homebridge) (with [homebridge-misfit-bolt](https://github.com/flochtililoch/homebridge-misfit-bolt) plugin)
- `lirc-web`: [LIRC Web](https://github.com/alexbain/lirc_web)
- `misfit-bolt-http`: [Misfit Bolt HTTP](https://github.com/flochtililoch/misfit-bolt-http)
- `node`: [NodeJS](https://nodejs.org/en/)


## Built Images

These are direct links of pre-built images from the container configurations.

- `homebridge`: [armv6l](https://hub.docker.com/r/flochtililoch/armv6l-homebridge/) | [armv7l](https://hub.docker.com/r/flochtililoch/armv7l-homebridge/)
- `lirc-web`: [armv6l](https://hub.docker.com/r/flochtililoch/armv6l-lirc-web/) | [armv7l](https://hub.docker.com/r/flochtililoch/armv7l-lirc-web/)
- `misfit-bolt-http`: [armv6l](https://hub.docker.com/r/flochtililoch/armv6l-misfit-bolt-http/) | [armv7l](https://hub.docker.com/r/flochtililoch/armv7l-misfit-bolt-http/)
- `node`: [armv6l](https://hub.docker.com/r/flochtililoch/armv6l-node/) | [armv7l](https://hub.docker.com/r/flochtililoch/armv7l-node/)
