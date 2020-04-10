# Set prompt
PS1="$ "
# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/zshhistfile
HISTSIZE=500
SAVEHIST=500
unsetopt appendhistory
#bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/christoph/.zshrc'
PATH=$PATH:~/.local/bin/
autoload -Uz compinit
compinit
# End of lines added by compinstall
