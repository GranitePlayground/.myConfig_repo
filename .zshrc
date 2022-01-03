# colin MacOSX ZSHRC config
#
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

###colin alias
#
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
#
# common ls
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias lla='ls -al'
# clear 
alias cl='clear'
# exit
alias ex='exit'
###

# plugin alias
alias cat="pygmentize -g"
alias myConfig='/usr/bin/git --git-dir=$HOME/.myConfig_repo/ --work-tree=$HOME'

# Plugin activation
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# for ZSH
case "$OSTYPE" in
  darwin19.0)
    source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme  #Bernard - MacBook Air
  ;;
  darwin21.0)
  source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme  #Laverne - M1Mini
  ;;
#  linux*)
    # ...
#  ;;
#  dragonfly*|freebsd*|netbsd*|openbsd*)
    # ...
#  ;;
esac

#source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme  #Laverne - M1Mini
#source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme  #Bernard - MacBook Air

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
