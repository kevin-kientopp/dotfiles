#!/bin/bash

echo "creating symbolic link for .vimrc"
ln -s ~/dotfiles/vimrc ~/.vimrc
echo "finished!"
echo
echo "results:"
echo
ls -al ~/.vimrc
