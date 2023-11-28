#!/usr/bin/env bash

if [ ! $(git config --global user.name) ]; then
		echo "Git Username: "
		read username

		echo "Git Email: "
		read email

		git config --global user.name $username
		git config --global user.email $email
fi

git config --global color.ui true

git config --global color.diff-highlight.oldNormal    "red bold"
git config --global color.diff-highlight.oldHighlight "red bold 52"
git config --global color.diff-highlight.newNormal    "green bold"
git config --global color.diff-highlight.newHighlight "green bold 22"

git config --global color.diff.meta       "11"
git config --global color.diff.frag       "magenta bold"
git config --global color.diff.func       "146 bold"
git config --global color.diff.commit     "yellow bold"
git config --global color.diff.old        "red bold"
git config --global color.diff.new        "green bold"
git config --global color.diff.whitespace "red reverse"

# install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# install nvchad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

# Symlink dotfiles
ln -s $(pwd)/zsh/.zshrc ~/.zshrc
ln -s $(pwd)/.tmux.conf ~/.tmux.conf
ln -fs $(pwd)/vim ~/.config/nvim/lua/custom
