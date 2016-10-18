.PHONY: all

toolchain:
	make -C build-resources build-toolchain
	docker run --rm -v $(PWD)/build-resources/kos/output:/output -v $PWD/tools:/src -it dc-toolchain:latest

kos:
	make -C build-resources build-kos
	docker run --rm -v $(PWD)/build-resources/runtime/output:/output -v $(PWD)/tools:/src/dc -it dc-kos:latest

kos-ports: 
	make -C build-resources build-kos-ports
	docker run --rm -v $(PWD)/build-resources/runtime/output:/output -v $(PWD)/tools/kos-ports:/usr/local/dc/kos/kos-ports -it dc-kos-ports:latest

runtime:
	cp build-resources/kos/output/dc-toolchain.tar.gz build-resources/runtime
	make -C build-resources build-runtime

all: toolchain kos runtime

