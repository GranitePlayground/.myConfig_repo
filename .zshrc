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
    alias ll='ls -l --color=auto'
    alias la='ls -A --color=auto'
    alias l='ls -CF --color=auto'
    alias lla='ls -al --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
#
# common ls 
###  redundent above in this case
alias ll='ls -l'
alias la='ls -a'
alias l='ls -CF'
alias lla='ls -Al'

alias ..='cd ..'

# clear 
alias cl='clear'
# exit
alias ex='exit'
# SSH Agent
alias ssha='eval $(ssh-agent) && ssh-add'
# Emacs Client
alias emacs="emacsclient -c -a 'emacs'"
###

# plugin alias
alias cat="pygmentize -g"
alias myConfig='/usr/bin/git --git-dir=$HOME/.myConfig_repo/ --work-tree=$HOME'

# Plugin activation
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

#crPATH
export PATH="$HOME/.emacs.d/bin:$PATH"
export PATH="$PATH:/usr/local/smlnj/bin"

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
