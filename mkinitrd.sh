#!/usr/bin/env sh

mkdir initrdir
cd initrdir
wget http://ftp.debian.org/debian/dists/stable/main/installer-arm64/current/images/netboot/debian-installer/arm64/initrd.gz
gzip -d initrd.gz
lzma initrd
mkimage -A arm64 -O linux -T ramdisk -C lzma -a 0x43300000 -n "Debian Installer" -d initrd.lzma initrd-debian-netboot.lzma.uboot
