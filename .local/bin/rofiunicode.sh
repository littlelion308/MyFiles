#!/bin/sh
LINE=$(cat ~/.local/share/char | rofi -dmenu)
CHOSEN=${LINE:0:1}
echo "$CHOSEN" | tr -d '\n' | xclip -selection clipboard
xdotool key shift+Insert
