#!/bin/bash

echo "Installing packages"
sudo pacman -S - < pacman.txt
echo "Installing crosstool"
git submodule sync --recursive
echo "Bootstrapping crosstool"
ls crosstool-ng/ct-ng || { cd crosstool-ng && ./bootstrap && ./configure --enable-local && make; }
ln -fns $PWD/ct-ng-config $PWD/crosstool-ng/.config
echo "Installing yay"
yay || { git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si; }
yay -S - < yay.txt
echo "Configuring pwclient"
ln -fns $PWD/pwclientrc $HOME/.pwclientrc
