#!/bin/sh
action=$(printf "quit\\nshutdown\\nreboot\\nlogoutmenu\\ncancel" | rofi -dmenu)
case $action in
	quit )
		bspc quit
		;;
	shutdown)
		shutdown 0
		;;
	reboot)
		reboot
		;;
	logoutmenu)
		lxsession-logout
		;;
	cancel)
		exit 0
		;;
esac
