[dc-logo]: https://github.com/Bhaal22/dc-dev/blob/master/resources/dreamcker.png "Dreamcker"

# Dreamcker : Dreamcast Environment inside Docker containers

![alt text][dc-logo]


# Container Creation
 * 1st intermediate container : Build the gcc toolchains for sh-elf and arm
 * 2nd intermediate container : Build KallistiOS / KOS Ports and dcload-tool
 * 3rd container: Contain all binaries to compile dreamcast binaries and upload tools
 
# Commands

```
make all

or

make toolchain
make kos
make runtime
```

```
docker run --rm -v path/to/your/source:/src/your_project -it drylm/dc-dev:1.1 /bin/bash

root@ab2caed664da:/# which kos-cc
/src/dc/kos/utils/gnu_wrappers/kos-cc

launch your compilation
```

# docker hub image

 https://hub.docker.com/r/drylm/dc-dev/

