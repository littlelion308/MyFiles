#!/bin/sh

#
#        _ _
#   __ _| (_) __ _ ___
#  / _` | | |/ _` / __|
# | (_| | | | (_| \__ \
#  \__,_|_|_|\__,_|___/
#




#
# funktions
#

ex () {
  if [ -f "$1" ] ; then
    case "$1" in
      *.7z)        7z x "$1"      ;;
      *.Z)         uncompress "$1";;
      *.bz2)       bunzip2 "$1"   ;;
      *.gz)        gunzip "$1"    ;;
      *.rar)       unrar x "$1"     ;;
      *.tar)       tar xf "$1"    ;;
      *.tar.bz2)   tar xjf "$1"   ;;
      *.tar.gz)    tar xzf "$1"   ;;
      *.tbz2)      tar xjf "$1"   ;;
      *.tgz)       tar xzf "$1"   ;;
      *.zip)       unzip "$1"     ;;
      *)           echo "$1 cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

instdeb() {
	bsdtar -O -xf $1 data.tar.xz | bsdtar -C / -xJf -
}

alias :Q='exit'
alias :q='exit'
alias :wq='exit'
alias abook='abook --config "$XDG_DATA_HOME"/abook/abookrc --datafile "$XDG_DATA_HOME"/abook/addressbook'
alias am='sudo mount /dev/sda4 /mnt'
alias an='sudo umount /mnt'
alias c='calcurse'
alias cdd='cd ~/Downloads/Code/MyFiles/'
alias ex='ex'
alias installdeb='instdeb'
alias la='ls --color=auto -a'
alias ll='ls --color=auto -la'
alias ls="ls --color=always"
alias nf='neofetch'
alias nm='neomutt'
alias q='exit'
alias rl='source ~/.zshrc'
alias v='vi'
alias vf='vifm'

#
#    Plugins
#

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

#
#   Settings
#

# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/zshhistfile
HISTSIZE=500
SAVEHIST=500
unsetopt appendhistory
bindkey -v
# End of lines configured by zsh-newuser-install
PS1="$ "
#Comp?? stuff
zstyle :compinstall filename '/home/christoph/.zshrc'
compinit
autoload -Uz compinit
#Comp stop
PATH=$PATH:~/.local/bin/

#
#   Startup
#

ufetch
