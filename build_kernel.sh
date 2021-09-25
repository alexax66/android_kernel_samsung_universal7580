#!/bin/bash
export CROSS_COMPILE=/home/alexax/build/toolchain/gcc-linaro-4.9-2016.02-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-
export ARCH=arm64

THREAD=-j$(bc <<< $(grep -c ^processor /proc/cpuinfo)+2)
DTBH_PLATFORM_CODE=0x50a6
DTBH_SUBTYPE_CODE=0x217584da

make -C $(pwd) O=output ARCH=$ARCH "lineageos_a3xelte_defconfig"
make $THREAD -C $(pwd) O=output ARCH=$ARCH
cp output/arch/arm64/boot/Image  output/arch/arm64/boot/boot.img-kernel

$(pwd)/dtbTool  -o "$(pwd)/output/arch/arm64/boot/dt.img" -s 2048 -d "$(pwd)/output/arch/arm64/boot/dts/" --platform $DTBH_PLATFORM_CODE --subtype $DTBH_SUBTYPE_CODE
cp output/arch/arm64/boot/dt.img  output/arch/arm64/boot/boot.img-dt

#24 2>&1 | tee -a  log.txt