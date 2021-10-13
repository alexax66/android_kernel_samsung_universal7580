#!/bin/bash

export CROSS_COMPILE=/home/alexax/build/toolchain/gcc-linaro-4.9-2016.02-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-
export ARCH=arm64

THREAD=-j$(bc <<< $(grep -c ^processor /proc/cpuinfo)+2)

make -C $(pwd) O=output ARCH=$ARCH "lineageos_a3xelte-octa_defconfig"
make $THREAD -C $(pwd) O=output ARCH=$ARCH

cp output/arch/arm64/boot/Image  output/arch/arm64/boot/boot.img-kernel
cp output/arch/arm64/boot/dt.img  output/arch/arm64/boot/boot.img-dt
