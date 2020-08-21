#!/bin/sh
SCREENS=$(xrandr | grep 'connected' | grep -v 'disconnected' | awk '{print $1}' | sort)
SCRNUMBER=$(echo "$SCREENS" | wc -l)
[ "$SCRNUMBER" = 1 ] && bspc monitor -d I II III IV V VI VII VIII IX X XI XII ||
[ "$SCRNUMBER" = 2 ] && [ "$(xrandr | grep 'connected' | grep -v 'disconnected' | awk '{print $1}' | sort | tr '\n' ' ')" ] &&
	bspc monitor VGA-0 -d I II III IV V VI && bspc monitor LVDS -d I II III IV V VI
