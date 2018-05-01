source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

alias gg='git grep'
alias gf='git fetch'
alias gc='git checkout'
alias gcm='git commit'
alias gsts='git status'

alias be='bundle exec'

# export PROMPT_COMMAND="echo -n \[\$(date +%H:%M:%S)\]\ "

function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}
function promps {
    local  BLUE="\[\e[0;34m\]"
    local  RED="\[\e[0;31m\]"
    local  GREEN="\[\e[0;32m\]"
    local  WHITE="\[\e[00m\]"
    local  GRAY="\[\e[0;37m\]"
    local  Mag="\[\e[0;35m\]"
    local  LIGHT_B="\[\e[0;34m\]"
    local  LIGHT_GREEN="\[\e[0;36m\]"
    case $TERM in
        xterm*) TITLEBAR='\[\e]0;\W\007\]';;
        *)      TITLEBAR="";;
    esac
    local BASE="\u@\h"

     PS1="[\$(date +%H:%M:%S)] ${LIGHT_GREEN}\u${WHITE}@${GREEN}\W:${LIGHT_GREEN}\$(parse_git_branch)${Mag}\$${WHITE}"
}
promps


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
