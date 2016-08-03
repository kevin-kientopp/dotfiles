#!/bin/bash

echo "creating symbolic link for .vimrc"
ln -s ~/dotfiles/vimrc ~/.vimrc

echo "creating symbolic link for .tmux.conf"
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

echo "creating symbolic link for .gitignore_global"
ln -s ~/dotfiles/gitignore_global ~/.gitignore_global

ls -al ~/.tmux.conf ~/.vimrc ~/.gitignore_global
