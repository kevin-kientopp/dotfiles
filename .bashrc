# To use this, add the following to ~/.bashrc:
#
# if [ -f ~/dotfiles/.bashrc ]; then
#     . ~/dotfiles/.bashrc
# fi

# Changes stty stop char from ctrl-s to nothing. This frees up ctrl-s to perform i-search.
stty stop ""

# Use vi keys in bash
set -o vi

alias jtags='ctags -R --languages=java'
alias ttags='ctags -R --languages=typescript'
alias jgrep='find -type f -name "*.java" | xargs grep'

