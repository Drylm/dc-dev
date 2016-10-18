#/bin/sh

set -e
cd /src/kos/utils/dc-chain

./download.sh \
    && ./unpack.sh \
    && make


tar czf /output/dc-toolchain.tar.gz /opt/toolchains/dc
