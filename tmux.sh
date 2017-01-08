#!/usr/bin/env bash

sudo apt install tmux -y

if [ ! -e ~/.tmux.conf ]
then
  ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
fi
