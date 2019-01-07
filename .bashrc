# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Use 'dotfiles' to manage dotfiles git repository
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Activate direnv
eval "$(direnv hook bash)"

alias ls='ls --color=auto'

# History configuration
HISTCONTROL=ignoreboth
HISTSIZE=10000
HISTFILESIZE=20000
shopt -s histappend

# Check windows size after each command
shopt -s checkwinsize

# Expand '**' to zero or more subdirecties
shopt -s globstar

# Completion
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  fi
fi

source /usr/share/git/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
