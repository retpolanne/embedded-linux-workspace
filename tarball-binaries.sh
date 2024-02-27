#!/usr/bin/env sh

mkdir out
cp u-boot/u-boot-sunxi-with-spl.bin out
cp u-boot/u-boot.dtb out
cp initrdir/initrd-debian-netboot.lzma.uboot out
cp linux/arch/arm64/boot/Image out
tar czvf out.tgz out
