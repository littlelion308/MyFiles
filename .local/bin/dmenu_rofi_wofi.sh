#!/bin/sh

[ -n "$WAYLAND_DISPLAY" ] 			&& tofi ||
[ -n "$DISPLAY" ] 	  			&& dmenu ||
# [ -z "$DISPLAY" ] && [ -z "$WAYLAND_DISPLAY" ] 	&& fzfmenu
grep '' ''
