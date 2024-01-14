#!/bin/bash

echo "Installing packages"
sudo pacman -S - < pacman.txt
echo "Installing crosstool"
git submodule sync --recursive
echo "Bootstrapping crosstool"
cd crosstool-ng && ./bootstrap
