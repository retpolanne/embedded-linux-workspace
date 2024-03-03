#!/usr/bin/env sh

rm -rf out && mkdir out
cp opensbi/build/platform/generic/firmware/fw_jump.bin out
cp opensbi/build/platform/generic/firmware/fw_dynamic.bin out
cp opensbi/build/platform/generic/firmware/fw_payload.bin out
cp u-boot/u-boot-sunxi-with-spl.bin out
cp u-boot/u-boot out
cp u-boot/u-boot.bin out
cp u-boot/u-boot.dtb out
cp initrdir/initrd-debian-netboot.lzma.uboot out
cp linux/arch/arm64/boot/Image out
tar czvf out.tgz out
