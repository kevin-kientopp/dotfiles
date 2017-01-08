#!/usr/bin/env bash

sudo apt install --assume-yes vim-gnome 

if [ ! -e ~/.vimrc ]
then
  script_dir=$(dirname $(readlink -f "${BASH_SOURCE[0]}"))
  ln -s "$script_dir/vimrc" ~/.vimrc
fi

cd ~
if [ ! -d ~/darcula ]
then
  git clone https://github.com/blueshirts/darcula
  if [ "$?" -ne 0 ]
  then
    exit 1
  fi
fi

mkdir -p ~/.vim/colors
if [ ! -e ~/.vim/colors/darcula.vim ]
then
  ln -s ~/darcula/colors/darcula.vim ~/.vim/colors/darcula.vim
fi

