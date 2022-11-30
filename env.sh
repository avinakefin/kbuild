#! /bin/bash

# Kernel Repo
KERNEL_REPO=https://"${GITHUB_USER}":"${GITHUB_TOKEN}"@github.com/avinakefin/alioth

# Kernel Branch
KERNEL_BRANCH=12.1-alioth

# The name of the device for which the kernel is built
MODEL="Poco F3"

# The codename of the device
DEVICE="Alioth"

# The defconfig which should be used. Get it from config.gz from
# your device or check source
DEFCONFIG=vendor/alioth_defconfig

# Show manufacturer info
MANUFACTURERINFO="Xiaomi"

# Kernel Variant
NAMA=Samsoe™

JENIS=Local

VARIAN=2.3.4

# Build Type
BUILD_TYPE="None"

# Specify compiler.
# 'clang' or 'clangxgcc' or 'gcc' or 'gcc49' , 'linaro & 'gcc2', clang2
COMPILER=clang

# Message on anykernel when installatio
MESSAGE="Samsoe kernel for poco"

# KBUILD ENV
K_USER=Avina
K_HOST=Unix
K_VERSION=2.3.4


# arch & subarch
K_ARCH=arm64
K_SUBARCH=arm64
