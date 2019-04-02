# Specify your defaults in this environment variable
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export RUBY_DEV_VERSION=2.3.1
export HISTSIZE=50000
export SAVEHIST=50000
export HISTFILE=~/.zsh_history

setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS

source ~/.zshenv_private
