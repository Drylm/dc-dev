[dc-logo]: https://github.com/Bhaal22/dc-dev/blob/master/resources/dreamcker.png "Dreamcker"

# Dreamcker : Dreamcast Environment inside Docker containers

![alt text][dc-logo]


# Container Creation
 * 1st intermediate container : Build the gcc toolchains for sh-elf and arm
 * 2nd intermediate container : Build KallistiOS / KOS Ports and dcload-tool
 * 3rd container: Contain all binaries to compile dreamcast binaries and upload tools
 
# Commands

```
# for a fresh cloned source tree
git submodule init && git sunmodule update

make all

or

make toolchain
make kos
make runtime
```

```
docker run --rm -v path/to/your/source:/src/project -it drylm/dc-dev:1.3
```

Run automatically

```
make all
```

on your project

# docker hub image

 https://hub.docker.com/r/drylm/dc-dev/

