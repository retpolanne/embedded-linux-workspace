#!/bin/bash

mkdir out
cp u-boot/u-boot-sunxi-with-spl.bin out
cp u-boot/u-boot.dtb
mkimage -A arm -T 
