#!/bin/sh
[ "$(printf 'script\nFile' | rofi -dmenu )" = 'script' ] && paha="$HOME/.local/bin" || paha="$HOME/Downloads"
choosen="$(ls "$paha" --color=never | rofi -dmenu)"
path="$paha"/"$choosen"
[ "$paha" = 'script' ] && chmod +x "$path"
alacritty -e vi "$path"
