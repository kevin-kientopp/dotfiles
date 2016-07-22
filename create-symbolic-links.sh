#!/bin/bash

echo "creating symbolic link for .vimrc"
ln -s ~/dotfiles/vimrc ~/.vimrc

echo "creating symbolic link for .tmux.conf"
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ls -al ~/.tmux.conf ~/.vimrc
