export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="risto"

plugins=(git)

source $ZSH/oh-my-zsh.sh

this_dir="$(dirname $(readlink ${(%):-%N}))"

# Load all scripts within the bash.d directory.
for config_file in $(ls $this_dir/bash.d/*.sh)
do
  source $config_file
done
