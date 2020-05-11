.PHONY: toolchain

build-toolchain:
	docker build --build-arg BUILD_DATE=$(date -u +'%Y-%m-%dT%H:%M:%SZ') -t dc-toolchain:latest -f ./toolchain/Dockerfile.toolchain ./toolchain

build-kos:
	docker build --build-arg BUILD_DATE=$(date -u +'%Y-%m-%dT%H:%M:%SZ') -t dc-kos:latest -f ./kos/Dockerfile.kos ./kos

build-runtime:
	docker build --build-arg BUILD_DATE=$(date -u +'%Y-%m-%dT%H:%M:%SZ') -t dc-dev:latest -f ./runtime/Dockerfile ./runtime


