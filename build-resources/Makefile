.PHONY: toolchain

build-toolchain:
	docker build -t dc-toolchain:latest -f ./toolchain/Dockerfile.toolchain ./toolchain

build-kos:
	docker build -t dc-kos:latest -f ./kos/Dockerfile.kos ./kos

build-runtime:
	docker build -t dc-dev:latest -f ./runtime/Dockerfile ./runtime


