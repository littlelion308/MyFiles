#!/bin/sh
action=$(printf "quit\\nshutdown\\nreboot\\nlogoutmenu\\ncancel" | dmenu)
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
	sleep)
		systemctl suspend
		;;
	hybrib-sleep)
		systemctl hybrib-sleep
		;;
	cancel)
		exit 0
		;;
esac
