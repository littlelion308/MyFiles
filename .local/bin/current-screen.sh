#!/bin/sh
SCREENS=$(xrandr | grep 'connected' | grep -v 'disconnected' | awk '{print $1}' | sort)
SCRNUMBER=$(echo "$SCREENS" | wc -l)
[ "$SCRNUMBER" = 1 ] && bspc monitor -d I II III IV V VI VII VIII IX X XI XII ||
if  [ "$SCRNUMBER" = 2 ]; then
	Exactmoddel="$(xrandr | grep 'connected' | grep -v 'disconnected' | awk '{print $1}' | sort | tr '\n' ' ')"
	bspc monitor "$(echo $Exactmoddel  | awk '{print $1}')" -d I II III IV V VI && bspc monitor "$(echo $Exactmoddel | awk '{print $1}')" -d I II III IV V VI
	[    "$Exactmoddel" = "HDMI-0 LVDS %" ] &&  xrandr --output VGA-0 --off --output LVDS --mode 1366x768 --pos 1920x312 --rotate normal --output HDMI-0 --mode 1920x1080 --pos 0x0 --rotate normal --output DisplayPort-1-0 --off --output HDMI-1-1 --off --output VGA-1-1 --off
fi
