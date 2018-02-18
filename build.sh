#!/bin/bash
cp ./build_dir/target-arm_xscale_musl_eabi/linux-rt1310/linux-4.9.76/arch/arm/boot/zImage /tmp
cat ./build_dir/target-arm_xscale_musl_eabi/linux-rt1310/linux-4.9.76/arch/arm/boot/dts/rt1310a-goip1.dtb >> /tmp/zImage
./staging_dir/host/bin/mkimage -A arm -O linux -T kernel -C none -a 0x40008000 -e 0x40008000 -n "OpenWrt" -d /tmp/zImage /srv/tftp/uImage
