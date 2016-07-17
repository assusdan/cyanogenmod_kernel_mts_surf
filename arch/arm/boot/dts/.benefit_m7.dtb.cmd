cmd_arch/arm/boot/dts/benefit_m7.dtb := ../linaro_5.2_arm/bin/arm-cortex-linux-gnueabi-gcc -E -Wp,-MD,arch/arm/boot/dts/.benefit_m7.dtb.d.pre.tmp -nostdinc -I./arch/arm/boot/dts -Iarch/arm/boot/dts -I./arch/arm/boot/dts/include -I./drivers/of/testcase-data -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/boot/dts/.benefit_m7.dtb.dts.tmp arch/arm/boot/dts/benefit_m7.dts ; ./scripts/dtc/dtc -O dtb -o arch/arm/boot/dts/benefit_m7.dtb -b 0 -i arch/arm/boot/dts/  -d arch/arm/boot/dts/.benefit_m7.dtb.d.dtc.tmp arch/arm/boot/dts/.benefit_m7.dtb.dts.tmp ; cat arch/arm/boot/dts/.benefit_m7.dtb.d.pre.tmp arch/arm/boot/dts/.benefit_m7.dtb.d.dtc.tmp > arch/arm/boot/dts/.benefit_m7.dtb.d

source_arch/arm/boot/dts/benefit_m7.dtb := arch/arm/boot/dts/benefit_m7.dts

deps_arch/arm/boot/dts/benefit_m7.dtb := \
  arch/arm/boot/dts/mt6735m.dtsi \
    $(wildcard include/config/base.h) \
    $(wildcard include/config/addr.h) \
  arch/arm/boot/dts/include/dt-bindings/interrupt-controller/arm-gic.h \
  arch/arm/boot/dts/include/dt-bindings/interrupt-controller/irq.h \
  arch/arm/boot/dts/mt6735m-pinfunc.h \
  arch/arm/boot/dts/mt65xx.h \
  arch/arm/boot/dts/include/dt-bindings/mmc/mt67xx-msdc.h \
  arch/arm/boot/dts/cust.dtsi \
  arch/arm/boot/dts/trusty.dtsi \

arch/arm/boot/dts/benefit_m7.dtb: $(deps_arch/arm/boot/dts/benefit_m7.dtb)

$(deps_arch/arm/boot/dts/benefit_m7.dtb):
