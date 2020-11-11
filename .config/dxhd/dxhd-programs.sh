#!/bin/sh

## $TERM -t Vifm -e vifm
GenericTermName=Terminal
LAUNCHER=rofi

###
### wm independent hotkeys
###

## TERMINALS

# super + Return
alacritty -t Terminal

# super + KP_Enter
alacritty -t $GenericTermName

# super + shift + Return
st

# super + shift + KP_Enter
st


# super + semicolon
alacritty -t vifm -e "$FM"

# super + apostrophe
alacritty -t vi -e "$EDITOR"

# super + backslash
alacritty -t R -e R


# super + shift + semicolon
alacritty -t htop -e "$TASKMANAGER"

# super + shift + apostrophe
alacritty -t neomutt -e "$EMAILCLIENT"

# super + shift + backslash
alacritty -t calcurse -e "$CALENDER"


## Launchers


# super + d
rofi -show combi

# super + shift + d
rofi -show run

# super + Tab
rofi -show window

# super + shift + Tab
rofi -show windowcd

# super + shift + c
rofi -modi "clip:greenclip print" -show clip -run-command '{cmd}'


## Scripts


# super + a
~/Downloads/Code/MyFiles/.local/bin/greenclear.sh

# super + i
~/Downloads/Code/MyFiles/.local/bin/rofiunicode.sh

# super + shift + {e,s}
~/Downloads/Code/MyFiles/.local/bin/rofishutdown.sh {a, b}

# {super + p, XF86Display}
~/Downloads/Code/MyFiles/.local/bin/displyhandler.sh {a, b}


# super + shift + p
PASSWORD_STORE_DIR="$XDG_DATA_HOME/pass" passmenu

# super + o
~/.local/bin/shower.sh


## Various programs


# super + shift + f
qutebrowser

# XF86AudioRaiseVolume
pulseaudio-ctl up

# XF86AudioLowerVolume
pulseaudio-ctl down

# XF86AudioMute
pulseaudio-ctl mute

# {super + w, Print}
flameshot {gui, gui}

# super + z
zathura

# super + shift + ctrl + l
xsecurelock

# super + shift + q
xdo {close, kill}

# super + shift + ctrl + q
xdo {close, kill}















