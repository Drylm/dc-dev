#!/bin/bash

ROOT="/usr/local/dc"


. ${ROOT}/environ_runtime.sh

pushd /src/project

make all

popd
