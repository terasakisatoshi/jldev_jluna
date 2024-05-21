# jldev_jluna

[![Docker Image CI](https://github.com/terasakisatoshi/jldev_jluna/actions/workflows/docker-image.yml/badge.svg)](https://github.com/terasakisatoshi/jldev_jluna/actions/workflows/docker-image.yml)

Hello World project using jluna on Docker container

## Setup

- Install Docker. That's all.

## Running `run_docker.sh`

Here, we provide a shell script named `run_docker.sh` to build a docker image and create a container from the image. Do you wanna try? Just run:

```console
$ bash run_docker.sh
```

Then, we will get:

```console
[+] Building 1.6s (12/12) FINISHED                                                                                                           docker:desktop-linux
 => [internal] load build definition from Dockerfile                                                                                                         0.0s
 => => transferring dockerfile: 884B                                                                                                                         0.0s
 => [internal] load metadata for docker.io/library/julia:1.10.3                                                                                              1.6s
 => [auth] library/julia:pull token for registry-1.docker.io                                                                                                 0.0s
 => [internal] load .dockerignore                                                                                                                            0.0s
 => => transferring context: 2B                                                                                                                              0.0s
 => [1/7] FROM docker.io/library/julia:1.10.3@sha256:11204c34c692c6f18754e6f5cb22bb1b57eb9f7a7180182f3cc76f665b604421                                        0.0s
 => CACHED [2/7] RUN adduser --disabled-password     --gecos "Default user"     --uid 1000     jovyan                                                        0.0s
 => CACHED [3/7] RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends  git cmake build-essential g++ &&  apt-get  0.0s
 => CACHED [4/7] RUN mkdir -p /workspaces                                                                                                                    0.0s
 => CACHED [5/7] RUN chown -R 1000 /workspaces                                                                                                               0.0s
 => CACHED [6/7] WORKDIR /workspaces                                                                                                                         0.0s
 => CACHED [7/7] RUN git clone https://github.com/clemapfel/jluna.git &&  cmake -S ./jluna -B ./jluna/build &&  cmake --build ./jluna/build -j `nproc` &&    0.0s
 => exporting to image                                                                                                                                       0.0s
 => => exporting layers                                                                                                                                      0.0s
 => => writing image sha256:a9da96934174301995663793a691ef451289dc553b0c523dcbcb05868464274b                                                                 0.0s
 => => naming to docker.io/library/jldev_jluna                                                                                                               0.0s

What's Next?
  View a summary of image vulnerabilities and recommendations → docker scout quickview
-- Configuring done
-- Generating done
-- Build files have been written to: /workspaces/build
[100%] Built target main
[JULIA][LOG] initialization successful (1 thread(s)).
hello julia
```

## Related topics

- [jluna's issue #51](https://github.com/Clemapfel/jluna/issues/51)
- [jluna/installation](https://clemens-cords.com/jluna/installation.html)