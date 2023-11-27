#!/usr/bin/env bash

# Install brew.
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install requisite packages.
brew install llvm gcc git zsh tmux neovim go fzf

this_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
./$(this_dir)/up-unix.sh
