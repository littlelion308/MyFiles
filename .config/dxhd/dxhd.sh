#!/bin/sh

# super + shift + ctrl + alt + q + w + e r + t + y + u + i + o + p + a
echo "You pressed a Lot of Keys"

## mouse1
##alacritty
## dxhd -c ~/.config/dxhd/dxhd-programs.sh
## dxhd -c ~/.config/dxhd/dxhd-bspc.sh

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
alacritty -t Terminal

# super + shift + Return
st

# super + shift + KP_Enter
st


# super + semicolon
alacritty -t Vifm -e vifm

# super + apostrophe
alacritty -t NVim -e nvim

# super + backslash
alacritty -t R -e R


# super + shift + semicolon
alacritty -t Htop -e htop

# super + shift + apostrophe
alacritty -t Neomutt -e neomutt

# super + shift + backslash
alacritty -t Calcurse -e calcurse


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

# super + shift + {_, ctrl +} q
xdo {close, kill}

###
### Bspwm Hotkeys
###


# super + ctrl + shift + {e,s}
{ bspc quit, shutdown 0}

# super + m
bspc desktop -l next

# super + {_,shift + }{h,j,k,l}
bspc node -{f, s} '{west,south,north,east}'

# super + {t,shift + space,f}
bspc node -t {tiled,floating,fullscreen}

# super + {_,shift + }c
bspc node -f {next,prev}.local

# super + bracket{left,right}
bspc desktop -f {prev,next}.local

# super + {_,shift + }{1-9,0,minus,equal}
bspc {desktop -f,node -d} '^{1-9,10,11,12}'

## expand a window by moving one of its side outward
# super + alt + {h,j,k,l}
bspc node -z {left -20 0,bottom 0 20,top 0 -20,right 20 0}

## contract a window by moving one of its side inward
# super + alt + shift + {h,j,k,l}
bspc node -z {right -20 0,top 0 20,bottom 0 -20,left 20 0}


##
### Unused, but Useful Things
##

# super + y
bspc node focused -n newest.!automatic.local

# super + {grave,b,comma,period}
bspc node -f @{parent,brother,first,second}

## preselect the direction
# super + ctrl + {h,j,k,l}
bspc node -p {west,south,north,east}

## preselect the ratio
# super + ctrl + {1-9}
bspc node -o 0.{1-9}

## cancel the preselection for the focused node
# super + ctrl + space
bspc node -p cancel

## cancel the preselection for the focused desktop
# super + ctrl + shift + space
bspc query -N -d | xargs -I id -n 1 bspc node id -p cancel

## move a floating window
# super + {Left,Down,Up,Right}
bspc node -v {-20 0,0 20,0 -20,20 0}
