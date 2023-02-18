#! /bin/bash

# Kernel Repo
KERNEL_REPO=$KERNEL_SOURCE

# Kernel Branch
KERNEL_BRANCH=munch-mi

# The name of the device for which the kernel is built
MODEL="Poco F4"

# The codename of the device
DEVICE="munch"

# The defconfig which should be used. Get it from config.gz from
# your device or check source

# Show manufacturer info
MANUFACTURERINFO="Xioami"

# Kernel Variant
NAMA=Yaknah

JENIS=MIUI

VARIAN=Limited

# Build Type
BUILD_TYPE="Stable"

# Specify compiler.
# 'clang' or 'clangxgcc (zynz)' or 'gcc' or 'gcc49' , 'linaro & 'gcc2', clang2
COMPILER=clang

# Message on anykernel when installation
MESSAGE="just flash"

# KBUILD ENV
K_USER=$BUILD_USER
K_HOST=$HOST

# arch & subarch
K_ARCH=arm64
K_SUBARCH=arm64
