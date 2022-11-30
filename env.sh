#! /bin/bash

# Kernel Repo
KERNEL_REPO=$KERNEL_SOURCE

# Kernel Branch
KERNEL_BRANCH=12.1-aliot

# The name of the device for which the kernel is built
MODEL="Poco F3"

# The codename of the device
DEVICE="alioth"

# The defconfig which should be used. Get it from config.gz from
# your device or check source

# Show manufacturer info
MANUFACTURERINFO="Xioami"

# Kernel Variant
NAMA=Samsoe

JENIS=Local

VARIAN=2.3.4

# Build Type
BUILD_TYPE="none"

# Specify compiler.
# 'clang' or 'clangxgcc' or 'gcc' or 'gcc49' , 'linaro & 'gcc2', clang2
COMPILER=clangxgcc

# Message on anykernel when installatio
MESSAGE="just flash and forget"

# KBUILD ENV
K_USER=Avina
K_HOST=Ubuntu


# arch & subarch
K_ARCH=arm64
K_SUBARCH=arm64
