#!/bin/bash

rm $HOME/.emacs $HOME/.emacs.d
mkdir -p $HOME/.config/emacs
ln -fns $PWD/emacs-init.el $HOME/.emacs
ln -fns $PWD/zshrc $HOME/.zshrc
ln -fns $PWD/gnus.el $HOME/.gnus.el
ln -fns $PWD/authinfo.gpg $HOME/.authinfo.gpg
ln -fns $PWD/hacker-but-cute.zsh-theme $HOME/.oh-my-zsh/themes/hacker-but-cute.zsh-theme
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
