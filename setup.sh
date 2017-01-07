#!/usr/bin/env bash

sudo apt install git -y
sudo apt install vim-gnome -y
./get-vim-darcula.sh
./create-symbolic-links.sh
./git-configs.sh
