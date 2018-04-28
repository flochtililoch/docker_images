# Dockers

A repository to organize docker images.


## Directory structure

```
[root]
 │
 ├─ <image>                      # Root directory of an image
 │   └── <platform>              # String representing the platform as returned by the `uname -m` command.
 │        └── Dockerfile         # See [Dockerfile](https://docs.docker.com/engine/reference/builder/).
 ├─ ...
 │
 └─ MAINTAINER                   # Text file containing the name of the maintainer
```

The convention established by this directory structure is reflected in the usage of provided scripts, and their resulting images and container names.


## Dockerfile conventions

- images should define an environment variable `ENV VERSION X.Y.Z`. The version number should ideally reflect the version of the software installed by the app, and will be used by CI to tag/push the image (on the top of being tagged `latest`).


## Maintaining images

Notes:
- Before running these scripts, `cd` into the `images` directory.
- Every command below use the same kind of arguments. Here is a description of what they are:
  - `<my_image>`: (required) same name given to the directory hosting the Dockerfile (in the structure above, `<image>`).
  - `[plaform]`: (optional) Default to current platform as returned by the `uname -m` command.
  - `[tag]`: (optional) Default to `latest`. Represents the docker tag.


## Building

```bash
$ ./build.sh <my_image> [platform]
```

This will build a docker image with the provided configuration in the Dockerfile. The image will be named using the MAINTAINER file, the image directory name and the platform, i.e. `flochtililoch/armv7l-openvpn-client`.


## Creating

```bash
$ ./create.sh <my_image>
```

This will create a scaffold or directories / Dockerfiles for `armv6l` / `armv7l` / `x86_64` platforms.


## Pulling

```bash
$ ./pull.sh <my_image> [tag] [platform]
```

This will pull a remote image locally. Shorthand to typing `docker pull maintainer/platform-imagename`.


## Tagging

```bash
$ ./tag.sh <my_image> [tag] [platform]
```

This will tag a local image using the latest image id. Shorthand to typing `docker tag <id> <image>:<tag>`.


## Pushing

```bash
$ ./push.sh <my_image> [tag] [platform]
```

This will push a local image to docker hub.
