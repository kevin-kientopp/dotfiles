#!/usr/bin/env bash

if [ ! -e ~/.vimrc ]
then
echo "creating symbolic link for .vimrc"
ln -s ~/dotfiles/vimrc ~/.vimrc
fi

if [ ! -e ~/.tmux.conf ]
then
echo "creating symbolic link for .tmux.conf"
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
fi

if [ ! -e ~/.gitignore ]
then
echo "creating symbolic link for .gitignore"
ln -s ~/dotfiles/gitignore ~/.gitignore
fi

ls -al ~/.tmux.conf ~/.vimrc ~/.gitignore
