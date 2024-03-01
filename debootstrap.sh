#!/usr/bin/env sh

mkdir debian-chroot
debootstrap --arch arm64 stable debian-chroot http://deb.debian.org/debian/
cd debian-chroot
find . | cpio -o --format=newc -R root:root | gzip -9 > ../ramdisk.cpio.gz
