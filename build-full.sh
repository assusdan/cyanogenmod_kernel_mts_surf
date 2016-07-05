#!/bin/bash
echo "Make dirs >>>"
mkdir tools/tools
echo "Export toolchains >>>"
export ARCH=arm CROSS_COMPILE=../linaro_5.2_arm/bin/arm-cortex-linux-gnueabi-
echo "Make defconfig >>>"
make benefit_m7_defconfig
echo "Start build >>>"
time make -j4
echo "======================"

