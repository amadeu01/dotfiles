# Path to Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="bira"

# Load modular configs
source $HOME/dotfiles/zsh/exports.zsh
source $HOME/dotfiles/zsh/plugins.zsh

# Load Oh My Zsh
source "$ZSH/oh-my-zsh.sh"
