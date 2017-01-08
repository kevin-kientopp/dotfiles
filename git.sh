#!/usr/bin/env bash

sudo apt install --assume-yes git

if [ ! -e ~/.gitignore ]
then
  script_dir=$(dirname $(readlink -f "${BASH_SOURCE[0]}"))
  ln -s "$script_dir/gitignore" ~/.gitignore
fi

git config --global user.email kevinkientopp@gmail.com
git config --global user.name kevin-kientopp
git config --global core.excludesfile ~/.gitignore
