#!/bin/sh
LINE=$(rofi -dmenu < $XDG_DATA_HOME/char)
CHOSEN=$(echo "$LINE" | cut -c1-1)
echo "$CHOSEN" | tr -d '\n' | xclip -selection clipboard
xdotool key shift+Insert

