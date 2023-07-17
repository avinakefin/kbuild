#! /bin/bash

# Kernel Repo
KERNEL_REPO=$KERNEL_SOURCE

# Kernel Branch
KERNEL_BRANCH=alioth

# The name of the device for which the kernel is built
MODEL="Poco F3"

# The codename of the device
DEVICE=$DEVICE_CODENAME

# The defconfig which should be used. Get it from config.gz from
# your device or check source

# Show manufacturer info
MANUFACTURERINFO="Xioami"

# Kernel Variant
NAMA=Samsoe

# untuk skalian fik ini itu pada miui , tulis kecil semua [ miui ]
JENIS=aosp

VARIAN=3.0-rc2

# Build Type
BUILD_TYPE="Stable"

#
# Specify compiler.
# 'clang' or 'clangxgcc (zynz)' or 'zyn (clang)' or 'gcc49' , 'linaro for kernel 5.4 'gcc2', clang2
COMPILER=clang

# Message on anykernel when installation
MESSAGE="just flash and forget"

# KBUILD ENV
K_USER=$BUILD_USER
K_HOST=$HOST

# arch & subarch
K_ARCH=arm64
K_SUBARCH=arm64

# Clone kernelSU 1 yes or 0 no
CLONESU=0
# kernel_f3 source
SUPAT=1

# 1 if clone anykernel 0 for have anykernel
ANYKERNEL=0
