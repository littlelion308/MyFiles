# Set prompt
PS1="$ "
# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/zshhistfile
HISTSIZE=500
SAVEHIST=500
unsetopt appendhistory
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/christoph/.zshrc'
PATH=$PATH:~/.local/bin/
autoload -Uz compinit
compinit
# End of lines added by compinstall
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
alias ex='ex'
alias ls="ls --color=always"
export XDG_DATA_HOME=~/.config
export WINEPREFIX="$XDG_DATA_HOME"/wineprefixes/default
alias :q='exit'
alias v='vi'
alias :Q='exit'
alias vf='vifm'
alias :wq='exit'
alias am='sudo mount /dev/sda4 /mnt'
alias an='sudo umount /mnt'
alias installdeb='bsdtar -O -xf $1 data.tar.xz | bsdtar -C / -xJf -'
alias ll='ls --color=auto -la'
alias la='ls --color=auto -a'
alias cal='calcurse'
alias c='calcurse'
