#/bin/sh

set -e
cd /usr/local/dc

. ./environ.sh

make -f Makefile.kos all
make -f Makefile.kos install


tar czf /output/kos.tar.gz \
    /src/dc/kos/environ_base.sh \
    /src/dc/kos/environ_dreamcast.sh \
    /src/dc/kos/Makefile* \
    /src/dc/kos/kernel \
    /src/dc/kos/loadable \
    /src/dc/kos/utils/gnu_wrappers \
    /src/dc/kos/utils/genromfs \
    /src/dc/kos/utils/bin2o \
    /src/dc/kos/utils/scramble/scramble \
    /src/dc/kos/utils/vqenc/vqenc \
    /src/dc/kos/utils/ldscripts \
    /src/dc/kos/lib/ \
    /src/dc/kos/include/ \
    /src/dc/kos/addons \
    /src/dc/kos-ports
