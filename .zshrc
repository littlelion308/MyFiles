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
alias ddg='w3m duckduckgo.com'
alias ex='ex'
alias fzf='find -type f | fzf'
alias installdeb='instdeb'
alias la='ls --color=auto -a'
alias ll='ls --color=auto -la'
alias ls="ls --color=always"
alias nf='neofetch'
alias nm='neomutt'
alias q='exit'
alias rl='source ~/.zprofile'
alias v='vi'
alias vf='vifm'

#
#    Plugins
#

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source /usr/share/doc/find-the-command/ftc.zsh

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

#
# Comp?? stuff
#
autoload -Uz compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zmodload zsh/complist
# zstyle :compinstall filename '/home/christoph/.zshrc'
compinit
_comp_options+=(globdots)

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'left' vi-backward-char
bindkey -M menuselect 'down' vi-down-line-or-history
bindkey -M menuselect 'up' vi-up-line-or-history
bindkey -M menuselect 'right' vi-forward-char

# bindkey "^?" backward-delete-char

# Comp stop

# Vi cursor fix

function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select

echo -ne '\e[5 q'
precmd() { echo -ne '\e[5 q' ;}

# More Vi Stuff
# ci", ci', ci`, di", etc
autoload -U select-quoted
zle -N select-quoted
for m in visual viopp; do
  for c in {a,i}{\',\",\`}; do
    bindkey -M $m $c select-quoted
  done
done

# ci{, ci(, ci<, di{, etc
autoload -U select-bracketed
zle -N select-bracketed
for m in visual viopp; do
  for c in {a,i}${(s..)^:-'()[]{}<>bB'}; do
    bindkey -M $m $c select-bracketed
  done
done


PATH=$PATH:~/Downloads/Code/MyFiles/.local/bin/

#
#   Startup
#

ufetch
