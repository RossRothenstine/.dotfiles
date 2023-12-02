#!/usr/bin/env bash

# Prerequisite tools.
apt-get install -y git \
	zsh

# Install neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage && \
	chmod u+x nvim.appimage && \
	mv nvim.appimage ~/.local/bin/nvim

# Install oh-my-zsh.
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Install zsh-autosuggestions.
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

$(dirname "${BASH_SOURCE[0]}")/up-unix.sh
