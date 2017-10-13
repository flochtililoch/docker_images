# Dockers

A repository to organize container based applications with multi platform support.


## Directory structure

```
[root]
 │
 ├─ apps                            # Root directory of all applications
 │  ├─ <app>                        # Root directory of an application
 │  │   ├── <service>               # Directory hosting files specifics to a service
 │  │   │    ├── config             # i.e. a configuration folder
 │  │   │    └── ...                #      or a volume exposed to the container.
 │  │   └── docker-compose.yml      # Defines the composition of every services of the app
 │  └── ...
 │
 ├─ images                          # Root directory of all images
 │  ├─ <image>                      # Root directory of an image
 │  │   └── <platform>              # String representing the platform as returned by the `uname -m` command.
 │  │        └── Dockerfile         # See [Dockerfile](https://docs.docker.com/engine/reference/builder/).
 │  └─ ...
 │
 └─ MAINTAINER                      # Text file containing the name of the maintainer
```

The convention established by this directory structure is reflected in the usage of provided scripts, and their resulting images and container names.

## Apps

### docker-compose conventions
- Each service that needs to expose specific host files to container must use a sub directory named after the service.
- Container name of a service must use following convention: `<app-name>.<service-name>`. i.e. `<homekit-lirc.lirc>`.


### Running apps
Note: `cd` into the `apps` directory first.

```bash
$ ./run.sh <app> [mode] [service]
```

Arguments:
- `<app>`: directory name hosting the app definition
- `[mode]`: (optional) Defaults to `up -d` (brings the app up in daemon mode. Can be used to `down` the app or `run` a specific service.
- `[service]`: (optional) Used in combination with `mode` set to `run`. Allows to run a specific service standalone.


## Images

### Dockerfile conventions

- images should define an environment variable `ENV VERSION X.Y.Z`. The version number should ideally reflect the version of the software installed by the app, and will be used by CI to tag/push the image (on the top of being tagged `latest`).


### Maintaining images

Notes:
- Before running these scripts, `cd` into the `images` directory.
- Every command below use the same kind of arguments. Here is a description of what they are:
  - `<my_image>`: (required) same name given to the directory hosting the Dockerfile (in the structure above, `<image>`).
  - `[plaform]`: (optional) Default to current platform as returned by the `uname -m` command.
  - `[tag]`: (optional) Default to `latest`. Represents the docker tag.


#### Building

```bash
$ ./build.sh <my_image> [platform]
```

This will build a docker image with the provided configuration in the Dockerfile. The image will be named using the MAINTAINER file, the image directory name and the platform, i.e. `flochtililoch/armv7l-openvpn-client`.


#### Creating

```bash
$ ./create.sh <my_image>
```

This will create a scaffold or directories / Dockerfiles for `armv6l` / `armv7l` / `x86_64` platforms.


#### Pulling

```bash
$ ./pull.sh <my_image> [tag] [platform]
```

This will pull a remote image locally. Shorthand to typing `docker pull maintainer/platform-imagename`.


#### Tagging

```bash
$ ./tag.sh <my_image> [tag] [platform]
```

This will tag a local image using the latest image id. Shorthand to typing `docker tag <id> <image>:<tag>`.


#### Pushing

```bash
$ ./push.sh <my_image> [tag] [platform]
```

This will push a local image to docker hub.
