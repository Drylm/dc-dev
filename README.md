# dc-dev: Dreamcast Environment inside Docker containers

![alt text][dc-logo]

[dc-logo]: https://github.com/Bhaal22/dc-dev/blob/master/resources/Dreamcast.png "Dreamcast Logo"

# Container Creation
 * 1st intermediate container : Build the gcc toolchains for sh-elf and arm
 * 2nd intermediate container : Build KallistiOS / KOS Ports and dcload-tool
 * 3rd container: Contain all binaries to compile dreamcast binaries and upload tools
 
# Commands

```
docker build -t dc-toolchain:latest -f ./Dockerfile.toolchain .
docker build -t dc-kos:latest -f ./Dockerfile.kos .
```

```
docker run -v $PWD/output:/output -v $PWD/kos:/src/kos -it dc-toolchain:latest
docker run -v $PWD/output:/output -v $PWD/tools:/src/tools -v $PWD/kos:/src/kos -v $PWD/kos-ports:/src/kos-ports -it dc-kos:latest
```

# docker hub image

 https://hub.docker.com/r/drylm/dc-dev/

