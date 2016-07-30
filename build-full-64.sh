#!/bin/bash

export KBUILD_BUILD_USER=oleg.svs

export KBUILD_BUILD_HOST=SRT

echo "Make dirs >>>"

mkdir tools/tools

echo "Export toolchains >>>"

export ARCH=arm64 CROSS_COMPILE=../*linaro-5.3*/bin/aarch64-linux-gnu-

echo "Make defconfig >>>"

make benefit_m7_64_defconfig

echo "Start build >>>"

	time make -j4

echo "======================"

