# To use this, add the following to ~/.bashrc:
#
# if [ -f ~/dotfiles/.bashrc ]; then
#     . ~/dotfiles/.bashrc
# fi

# stops stty, which blocks i-search from working
stty stop ""

alias jtags='find -type f -name "*.java" | xargs ctags'
alias ttags='find -type f -name "*.ts" | xargs ctags'
alias jgrep='find -type f -name "*.java" | xargs grep'

