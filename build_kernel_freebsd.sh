#!/usr/local/bin/bash

CROSS_COMPILE=/home/alexax/src/Andriod/toolchains/gcc-linaro-4.9.4-2017.01-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-;
export CROSS_COMPILE

ARCH=arm64;
export ARCH

THREAD=-j$(bc <<< $(sysctl -n hw.ncpu)+2)

gmake -C $(pwd) O=output ARCH=$ARCH "lineageos_a3xelte-octa_defconfig"
gmake $THREAD -C $(pwd) O=output ARCH=$ARCH

cp output/arch/arm64/boot/Image  output/arch/arm64/boot/boot.img-kernel
cp output/arch/arm64/boot/dt.img  output/arch/arm64/boot/boot.img-dt
