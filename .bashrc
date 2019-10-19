#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Time Zone
export TZ='Asia/Tehran'

# Home bin
export PATH=$PATH:$HOME/bin

# aliases
alias v=vim

# Vi mode
set -o vi

# Golang stuff
export GOPATH=$HOME/go
export PATH="$PATH:$HOME/go/bin"

