#!/usr/bin/env bash

sudo apt install git -y
git config --global user.email kevinkientopp@gmail.com
git config --global user.name kevin-kientopp
git config --global core.excludesfile ~/.gitignore

if [ ! -e ~/.gitignore ]
then
  ln -s ~/dotfiles/gitignore ~/.gitignore
fi
