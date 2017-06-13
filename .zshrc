fpath=( "$HOME/.zsh/functions" $fpath )
autoload -U promptinit && promptinit
prompt pure
# PURE_PROMPT_SYMBOL=" "

autoload -U compinit
compinit

setopt interactivecomments
setopt autocd
setopt extendedglob
setopt inc_append_history
setopt share_history
setopt extended_history

export CLICOLOR=1


#source /usr/local/opt/chruby/share/chruby/auto.sh
#source /usr/local/opt/chruby/share/chruby/chruby.sh
#source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-history-substring-search.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
eval "$(docker-machine env default)"

#export PATH="$PATH:~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
#export PATH=".git/safe/../../bin:$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export v2="cd ~; ls;"



## Arrow Keys ###########################################

# OPTION 1: for most systems
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# OPTION 2: for iTerm2 running on Apple MacBook laptops
zmodload zsh/terminfo
bindkey "$terminfo[cuu1]" history-substring-search-up
bindkey "$terminfo[cud1]" history-substring-search-down

# OPTION 3: for Ubuntu 12.04, Fedora 21, and MacOSX 10.9
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

## EMACS mode ###########################################

bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

## VI mode ##############################################

bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
