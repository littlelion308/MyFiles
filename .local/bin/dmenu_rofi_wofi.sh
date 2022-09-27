#!/bin/sh

[ -n "$WAYLAND_DISPLAY" ] 			&& tofi ||
[ -n "$DISPLAY" ] 	  			&& rofi -dmenu ||
# [ -z "$DISPLAY" ] && [ -z "$WAYLAND_DISPLAY" ] 	&& fzfmenu
grep '' ''
