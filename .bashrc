#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -la --color=auto'
export EDITOR="vim"
export BROWSER="google-chrome"
#PS1='[\u@\h \W]\$ '
#PS1='[\[\033[1;34m\]\u\[\033[0m\]@\[\033[1;32m\]\h \[\033[1;31m\]\t \[\033[1;33m\]\W\[\033[0m\]]\[\033[1;35m\]\$ \[\033[0m\]'
PS1='[\[\033[1;34m\]\u\[\033[0m\]@\[\033[1;32m\]\h \[\033[1;31m\]\t \[\033[1;33m\]\W\[\033[0m\]]\[\033[1;37m\]$(__git_ps1)\[\033[0m\]\[\033[1;35m\]\$ \[\033[0m\]'
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
