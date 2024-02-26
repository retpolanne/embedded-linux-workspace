#!/bin/bash

echo "Installing packages"
#sudo pacman -S - < pacman.txt
sudo apt update && sudo apt install -y $(cat debian-packages.txt)
echo "Installing crosstool"
git submodule sync --recursive
echo "Bootstrapping crosstool"
ls crosstool-ng/ct-ng || { cd crosstool-ng && ./bootstrap && ./configure --enable-local && make; }
ln -fns $PWD/ct-ng-config $PWD/crosstool-ng/.config
echo "Installing pwclient"
pipx install pwclient
echo "Configuring pwclient"
ln -fns $PWD/pwclientrc $HOME/.pwclientrc
