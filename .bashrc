# To use this, add the following to ~/.bashrc:
#
# if [ -f ~/dotfiles/.bashrc ]; then
#     . ~/dotfiles/.bashrc
# fi

# stops stty, which blocks i-search from working
stty stop ""

# use vi keys in bash
set -o vi

alias jtags='ctags `find -type f -name "*.java"`'
alias ttags='ctags `find -type f -name "*.ts"`'
alias jgrep='find -type f -name "*.java" | xargs grep'

