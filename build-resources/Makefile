.PHONY: toolchain

build-toolchain:
	docker build --no-cache --build-arg BUILD_DATE=$(date -u +'%Y-%m-%dT%H:%M:%SZ') -t drylm/dc-toolchain:1.2 -f ./toolchain/Dockerfile.toolchain ./toolchain

build-kos:
	docker build --no-cache --build-arg BUILD_DATE=$(date -u +'%Y-%m-%dT%H:%M:%SZ') -t drylm/dc-kos:1.2 -f ./kos/Dockerfile.kos ./kos

build-runtime:
	docker build --no-cache --build-arg BUILD_DATE=$(date -u +'%Y-%m-%dT%H:%M:%SZ') -t drylm/dc-dev:1.2 -f ./runtime/Dockerfile ./runtime


