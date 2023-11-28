#!/usr/bin/env bash

alias ll='ls -alF'
alias la='ls -A'
alias dc='popd'
alias ..='cd ..'
alias cls='clear'
alias k='kubectl'
alias kx='kubectx'

# if vim is not nvim, alias it to nvim.
if ! command -v nvim &> /dev/null
then
    alias vim='vim'
else
    alias vim='nvim'
fi
