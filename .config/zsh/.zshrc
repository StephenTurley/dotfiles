export ZSH="$XDG_DATA_HOME/.oh-my-zsh"
ZSH_THEME="bira"
HISTFILE="$XDG_CACHE_HOME/zsh/history"

plugins=(
  docker
  docker-compose
  git
)
source $ZSH/oh-my-zsh.sh
eval "$(starship init zsh)"
