#/bin/sh

set -e
cd /usr/local/dc

. ./environ.sh

make -f Makefile.kos all
make -f Makefile.kos install


tar czf /output/kos.tar.gz /usr/local/dc/kos/
