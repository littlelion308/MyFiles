# Vars...
export EDITOR="vi"
export TERMINAL="alacritty"
export TERM="alacritty"
export LANG="en_US-UFT-8"
export LANGUAGE="en:de"
export LC_ALL="en_US"
export BROWSER="firefox"
export READER="zathura"
export LESSHISTFILE="-"
export FM="vifm"
export FILEMANAGER="vifm"
export TASKMANAGER="htop"
export EMAILCLIENT="neomutt"
export CALENDER="calcurse"
# export $ZDOTDIR="$HOME/.config/zsh"

# Cleanup
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export BYOBU_CONFIG_DIR=$XDG_CONFIG_HOME/byobu
export GTK2_RC_FILES="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-2.0/gtkrc-2.0"
export LESSHISTFILE="-"
# export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
export INPUTRC="${XDG_CONFIG_HOME:-$HOME/.config}/inputrc"
export TMUX_TMPDIR="$XDG_RUNTIME_DIR"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/pass"
export CUPS_DATADIR="$XDG_DATA_HOME/cups"
export CUPS_CACHEDIR="$XDG_DATA_HOME/cups"
# export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"
# $PATH=$PATH:~/.local/bin

# source ~/.config/zsh/.zshrc


# autostart tmux

[ $TTY = /dev/tty1 ] && tbsm && tmux
[ $TTY = /dev/tty2 ] && tmux
[ $TTY = /dev/tty3 ] && tmux
[ $TTY = /dev/tty4 ] && tmux
[ $TTY = /dev/tty5 ] && tmux
[ $TTY = /dev/tty6 ] && tmux
[ $TTY = /dev/tty7 ] && tmux
[ $TTY = /dev/tty8 ] && tmux
[ $TTY = /dev/tty9 ] && tmux
[ $TTY = /dev/tty10 ] && tmux
[ $TTY = /dev/tty11 ] && tmux
[ $TTY = /dev/tty12 ] && tmux
