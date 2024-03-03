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
# Building perf

``` sh
make defconfig
make kvm_guest.config
cd tools/perf
make -j`nproc`
```

