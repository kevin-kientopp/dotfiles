#!/usr/bin/env bash

sudo apt install vim-gnome -y

if [ ! -e ~/.vimrc ]
then
  ln -s ~/dotfiles/vimrc ~/.vimrc
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

