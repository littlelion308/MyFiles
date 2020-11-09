#!/bin/sh

## $TERM -t Vifm -e vifm
GenericTermName=Terminal
AltTerm=st
LAUNCHER=rofi

###
### wm independent hotkeys
###

## TERMINALS

# super + Return
$TERM -t $GenericTermName

# super + KP_Enter
$TERM -t $GenericTermName

# super + shift + Return
$AltTerm

# super + shift + KP_Enter
$AltTerm


# super + semicolon
$TERM -t "$FM" -e "$FM"

# super + apostrophe
$TERM -t "$EDITOR" -e "$EDITOR"

# super + backslash
$TERM -t R -e R


# super + shift + semicolon
$TERM -t "$TASKMANAGER" -e "$TASKMANAGER"

# super + shift + apostrophe
$TERM -t "$EMAILCLIENT" -e "$EMAILCLIENT"

# super + shift + backslash
$TERM -t "$CALENDER" -e "$CALENDER"


## Launchers


# super + d
$LAUNCHER -show combi

# super + shift + d
$LAUNCHER -show run

# super + Tab
$LAUNCHER -show window

# super + shift + Tab
$LAUNCHER -show windowcd

# super + shift + c
$LAUNCHER -modi "clip:greenclip print" -show clip -run-command '{cmd}'


## Scripts


# super + a
~/Downloads/Code/MyFiles/.local/bin/greenclear.sh

# super + i
~/Downloads/Code/MyFiles/.local/bin/rofiunicode.sh

# super + shift + {e,s}
~/.local/bin/rofishutdown.sh

# {super + p, XF86Display}
~/.local/bin/displyhandler.sh


# super + shift + p
PASSWORD_STORE_DIR="$XDG_DATA_HOME/pass" passmenu

# super + o
~/.local/bin/shower.sh


## Various programs


# super + shift + f
$BROWSER

# XF86AudioRaiseVolume
pulseaudio-ctl up

# XF86AudioLowerVolume
pulseaudio-ctl down

# XF86AudioMute
pulseaudio-ctl mute

# {super + w, Print}
flameshot gui

# super + z
zathura

# super + shift + ctrl + l
xsecurelock

# super + shift {_,ctrl + }q
xdo {close, kill}
















