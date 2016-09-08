# Dockers

Repository hosting docker images representations (Dockerfile) and apps configurations.


## Images definitions

### Directory structure

```
[root]
 │
 ├─ apps
 │  ├─ <app_name>
 │  │   ├── <container_name>
 │  │   │    ├── config
 │  │   │    └── ...
 │  │   └── docker-compose.yml
 │  │
 │  ├─ run.sh
 │  └── ...
 │
 └─ images
    ├─ <image_base_name>
    │   └── <platform_id>
    │        └── Dockerfile
    ├── ...
    │
    ├─ build.sh
    └─ MAINTAINER
```

#### `<app_name>`

Name of the group of services as defined in [`docker-compose.yml`](#docker-composeyml).

#### `<container_name>`

Name of the container representing the service as defined in [`docker-compose.yml`](#docker-composeyml).

#### `docker-compose.yml`

See [docker-compose.yml](https://docs.docker.com/compose/compose-file/).

#### `run.sh`

Script to run the app represented by its [`docker-compose.yml`](#docker-composeyml).

*Usage:*
```bash
./run.sh <app_name>
```

#### `<image_base_name>`

Spaceless string representing the image. It will be used by the build scripts to properly map to the correct files. Used to generate images names.

#### `<platform_id>`

String representing the platform as returned by the `uname -m` command. Used to generate images names.

#### `Dockerfile`

See [Dockerfile](https://docs.docker.com/engine/reference/builder/).

#### `build.sh`

Script to build the image as specified in the `Dockerfile`. Image name will be named using the following pattern: `<MAINTAINER>/<platform_id>-<image_base_name>`.

*Usage:*
```bash
./build.sh <image_base_name>
```

#### `MAINTAINER`

Text file containing the name of the maintainer. Used when generating images names.


## Existing Images Definitions

- `homebridge`: [Homebridge](https://github.com/nfarina/homebridge) (with [homebridge-misfit-bolt](https://github.com/flochtililoch/homebridge-misfit-bolt) plugin)
- `lirc`: [LIRC](http://lirc.org)
- `lirc-web`: [LIRC Web](https://github.com/alexbain/lirc_web)
- `misfit-bolt-http`: [Misfit Bolt HTTP](https://github.com/flochtililoch/misfit-bolt-http)
- `node`: [NodeJS](https://nodejs.org/en/)


## Built Images

These are direct links to pre-built images from their Dockerfile representation.

- `homebridge`: [armv6l](https://hub.docker.com/r/flochtililoch/armv6l-homebridge/) | [armv7l](https://hub.docker.com/r/flochtililoch/armv7l-homebridge/)
- `lirc`: [armv6l](https://hub.docker.com/r/flochtililoch/armv6l-lirc/) | [armv7l](https://hub.docker.com/r/flochtililoch/armv7l-lirc/)
- `lirc-web`: [armv6l](https://hub.docker.com/r/flochtililoch/armv6l-lirc-web/) | [armv7l](https://hub.docker.com/r/flochtililoch/armv7l-lirc-web/)
- `misfit-bolt-http`: [armv6l](https://hub.docker.com/r/flochtililoch/armv6l-misfit-bolt-http/) | [armv7l](https://hub.docker.com/r/flochtililoch/armv7l-misfit-bolt-http/)
- `node`: [armv6l](https://hub.docker.com/r/flochtililoch/armv6l-node/) | [armv7l](https://hub.docker.com/r/flochtililoch/armv7l-node/)
