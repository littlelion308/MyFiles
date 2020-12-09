#!/bin/sh
action=$(printf "adNeo\\nNeo\\nqwerty\\nqwertz\\ncancel" | rofi -dmenu)
case $action in
	qwerty)
		setxkbmap en_US
		;;
	qwertz)
		setxkbmap de
		;;
	Neo)
		setxkbmap de neo
		;;
	adNeo )
		setxkbmap en_US
		;;
	cancel)
		exit 0
		;;
esac
