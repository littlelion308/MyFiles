#!/bin/sh

[ -n "$WAYLAND_DISPLAY" ] 			&& wofi -d ||
[ -n "$DISPLAY" ] 	  			&& rofi -dmenu ||
[ -z "$DISPLAY" ] && [ -z "$WAYLAND_DISPLAY" ] 	&& fzfmenu
