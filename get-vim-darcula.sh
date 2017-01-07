#!/usr/bin/env bash

cd
if [ ! -d ~/darcula ]
then
	git clone https://github.com/blueshirts/darcula
	if [ $? != 0 ]
	then
		exit 1
	fi
fi

mkdir -p ~/.vim/colors
if [ ! -e ~/.vim/colors/darcula.vim ]
then
	ln -s ~/darcula/colors/darcula.vim ~/.vim/colors/darcula.vim
fi

