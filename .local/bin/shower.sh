#!/bin/sh
SCRIPT=$(printf 'wetter\ngetnews' | rofi -dmenu -p 'show wath')
case $SCRIPT in
	wetter)
		alacritty --hold -e curl wttr.in/"$(rofi -dmenu -p 'Where?')"
		;;
	getnews)
		alacritty --hold -e curl getnews.tech/"$(rofi -dmenu -p 'Topic?')"
		;;
esac
