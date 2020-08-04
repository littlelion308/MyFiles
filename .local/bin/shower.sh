#!/bin/sh
SCRIPT=$(printf 'wetter\ngetnews' | rofi -dmenu -p 'show wath')
case $SCRIPT in
	wetter)
		curl wttr.in/"$(rofi -dmenu -p 'Where?')"
		;;
	getnews)
		curl getnews.tech/"$(rofi -dmenu -p 'Topic?')"
		;;
esac
