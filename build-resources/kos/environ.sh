# KallistiOS environment variable settings
#
# This is a sample script. Configure to suit your setup. Some possible
# alternatives for the values below are included as an example.
#
# This script should be executed in your current shell environment (probably
# by bashrc or something similar).
#

# Build architecture. Set the major architecture you'll be building for.
export KOS_ARCH="dreamcast"

# Build sub-architecture. If you need a particular sub-architecture, then set
# that here; otherwise use "pristine".
export KOS_SUBARCH="pristine"

# KOS main base path
export KOS_BASE="/src/dc/kos"

# Make utility
export KOS_MAKE="make"

# Load utility
export KOS_LOADER="dc-tool -x"				# dcload, preconfigured

# Genromfs utility
export KOS_GENROMFS="${KOS_BASE}/utils/genromfs/genromfs"
#export KOS_GENROMFS="genromfs"

# Compiler prefixes
export KOS_CC_BASE="/opt/toolchains/dc/sh-elf"
export KOS_CC_PREFIX="sh-elf"

# If you are compiling for DC and have an ARM compiler, use these too.
export DC_ARM_BASE="//opt/toolchains/dc/arm-eabi"
export DC_ARM_PREFIX="arm-eabi"

# Expand PATH (comment out if you don't want this done here)
export PATH="${PATH}:${KOS_CC_BASE}/bin"

# Manually add our second addons tree
export KOS_INC_PATHS="-I${KOS_BASE}/../kos-ports/include"

# Setup some default CFLAGS for compilation. The things that will go here
# are user specifyable, like optimization level and whether you want stack
# traces enabled. Some platforms may have optimization restrictions,
# please check README.
export KOS_CFLAGS="-O2 -fomit-frame-pointer"
# export KOS_CFLAGS="-O2 -DFRAME_POINTERS"

# Everything else is pretty much shared. If you want to configure compiler
# options or other such things, look at this file.
. ${KOS_BASE}/environ_base.sh
