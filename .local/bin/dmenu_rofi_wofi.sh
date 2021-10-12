#!/bin/sh

[ -n "$WAYLAND_DISPLAY" ] && wofi -d ||
[ -n "$DISPLAY" ] 	  && rofi -dmenu ||
			     fzfmenu
