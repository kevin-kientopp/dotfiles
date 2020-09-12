# To use this, add the following to ~/.bashrc:
#
# if [ -f ~/dotfiles/.bashrc ]; then
#     . ~/dotfiles/.bashrc
# fi

if [[ $PATH != *"$HOME/bin"* ]]; then
  export PATH=$PATH:$HOME/bin
fi

# Changes stty stop char from ctrl-s to nothing. This frees up ctrl-s to perform i-search.
stty stop ""

# Use vi keys in bash
set -o vi

# Erase duplicates in history
export HISTCONTROL=erasedups
# Store 10k history entries
export HISTSIZE=10000
# Append to the history file when exiting instead of overwriting it
shopt -s histappend

alias jtags='ctags -R --languages=java'
alias ttags='ctags -R --languages=typescript'
alias h='history'
alias less='less -R'

# pip bash completion start
_pip_completion()
{
    COMPREPLY=( $( COMP_WORDS="${COMP_WORDS[*]}" \
                   COMP_CWORD=$COMP_CWORD \
                   PIP_AUTO_COMPLETE=1 $1 ) )
}
complete -o default -F _pip_completion pip
# pip bash completion end
