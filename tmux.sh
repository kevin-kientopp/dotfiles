#!/usr/bin/env bash

sudo apt install --assume-yes tmux

if [ ! -e ~/.tmux.conf ]
then
  script_dir=$(dirname $(readlink -f "${BASH_SOURCE[0]}"))
  ln -s "$script_dir/tmux.conf" ~/.tmux.conf
fi
