load opensbi/build/platform/generic/firmware/fw_dynamic.elf 0x80000000
load u-boot/u-boot 0x80200000
break *0x80000000
