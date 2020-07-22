# Vars...
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="qutebrowser"
export READER="zathura"

# Cleanup
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export GTK2_RC_FILES="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-2.0/gtkrc-2.0"
export LESSHISTFILE="-"
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
export INPUTRC="${XDG_CONFIG_HOME:-$HOME/.config}/inputrc"
export TMUX_TMPDIR="$XDG_RUNTIME_DIR"
# export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"

source ~/.config/zsh/.zshrc


# autostart tmux

[ $TTY = /dev/tty1 ] && tbsm
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
