# Kernel compilation env

## Setup env

```sh
./setup.sh
# Optional
cd dotfiles-kerneldev
./setup.sh
```

Also, `export CROSS_COMPILE=aarch64-linux-gnu-` as the cross compilation prefix and `ARCH=aarch64` (done on my dotfiles).

## Preparing linux

```sh
cd linux
git remote add stable https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux
git fetch stable
```

# Linux/U-boot Sunxi and Orange Pi One Plus

More info [here](https://linux-sunxi.org/Xunlong_Orange_Pi_One_Plus) and [here](https://linux-sunxi.org/FEL/USBBoot)

```sh
cd trusted-firmware-a
make PLAT=sun50i_h6 bl31
```

```sh
cd crust
make orangepi_one_defconfig
make scp
```

```sh
cd u-boot
make orangepi_one_plus_defconfig

# We don't need this :) 
export SCP=/dev/null
export BL31=$PWD/../trusted-firmware-a/build/sun50i_h6/release/bl31.bin
make -j`nproc`
```

```sh
cd linux
make ARCH=arm sunxi_defconfig
make ARCH=arm make -j`nproc` zImage
make ARCH=arm make -j`nproc` dtbs
```

On the Mac host, to get serial logs

```sh
picocom -b 115200 /dev/tty.usbserial-A50285BI
```
