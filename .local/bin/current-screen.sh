#!/bin/sh
autorandr -c
SCREENS=$(xrandr | grep 'connected' | grep -v 'disconnected' | awk '{print $1}' | sort)
SCRNUMBER=$(echo "$SCREENS" | wc -l)
[ "$SCRNUMBER" = 1 ] && bspc monitor -d I II III IV V VI VII VIII IX X XI XII ||
if  [ "$SCRNUMBER" = 2 ]; then
	Exactmoddel="$(xrandr | grep 'connected' | grep -v 'disconnected' | awk '{print $1}' | sort | tr '\n' ' ')"
	bspc monitor "$(echo $Exactmoddel  | awk '{print $1}')" -d I II III IV V VI && bspc monitor "$(echo $Exactmoddel | awk '{print $2}')" -d I II III IV V VI
fi
