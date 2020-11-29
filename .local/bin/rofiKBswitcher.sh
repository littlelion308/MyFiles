#!/bin/sh
action=$(printf "adNeo\\nNeo\\nqwerty\\nqwertz\\ncancel" | rofi -dmenu)
case $action in
	adNeo )
		setxkbmap en_US
		;;
	Neo)
		setxkbmap de neo
		;;
	qwerty)
		setxkbmap en_US
		;;
	qwertz)
		setxkbmap de
		;;
	cancel)
		exit 0
		;;
esac
