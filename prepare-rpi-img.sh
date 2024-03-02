#!/usr/bin/env sh

curl https://downloads.raspberrypi.com/raspios_lite_arm64/images/raspios_lite_arm64-2023-12-11/2023-12-11-raspios-bookworm-arm64-lite.img.xz -o raspios.img.xz
xz -dv raspios.img.xz
sudo losetup -P /dev/loop1 raspios.img
sudo mount /dev/loop1p2 /mnt
sudo mount /dev/loop1p1 /mnt/boot/firmware
echo "Copying Image.gz to raspios"
sudo cp rpi-linux/arch/arm64/boot/Image.gz /mnt/boot/firmware/kernel8.img
#sudo losetup -d /dev/loop1
