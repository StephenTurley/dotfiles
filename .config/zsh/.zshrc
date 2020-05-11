export ZSH="$XDG_DATA_HOME/.oh-my-zsh"
ZSH_THEME="bira"

plugins=(
  rvm
  adb
  docker
  docker-compose
  git
)
source $ZSH/oh-my-zsh.sh

alias config="/usr/bin/git --git-dir=$HOME/projects/dotfiles/ --work-tree=$HOME"
