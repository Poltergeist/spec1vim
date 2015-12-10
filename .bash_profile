if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
alias ll="ls -la"
alias ls="ls -a"
alias git="hub"

function ticket() {
  git browse -- issues/$1
}
alias ticket=ticket
alias npm-exec='PATH=$(npm bin):$PATH'

export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\H \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad"]]]]]"
source /Users/sp3c1/.oh-my-git/prompt.sh

eval "$(direnv hook bash)"
