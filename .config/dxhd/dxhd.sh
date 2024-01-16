#!/bin/sh
#########################
## New write ############
## Windowmanager ########
#########################


## Kill window
# super + shift + {_, ctrl +} q
xdo {close, kill}
## Foucus and move
# super + {_,shift + }{h,j,k,l}
bspc node -{f, s} '{west,south,north,east}'
## cyclic focus
# super + {_,shift + }c
bspc node -f {next,prev}.local
## switch and move between desktops
# super + {_,shift + }{1-9,0,minus,equal}
bspc {desktop -f,node -d} '^{1-9,10,11,12}'
## toggel tiled, floating, fullscreen
# super + {t,shift + space,f}
bspc node -t {tiled,floating,fullscreen}

### Unused, but Useful Things
# super + m
bspc desktop -l next

# super + {_,shift + }bracket{left,right}
bspc {desktop -f,node -d} {prev,next}.local

## expand a window by moving one of its side outward
# super + alt + {h,j,k,l}
bspc node -z {left -20 0,bottom 0 20,top 0 -20,right 20 0}

## contract a window by moving one of its side inward
# super + alt + shift + {h,j,k,l}
bspc node -z {right -20 0,top 0 20,bottom 0 -20,left 20 0}

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
# super + {Left,Down,Up,right}
bspc node -v {-20 0,0 20,0 -20,20 0}


### WM independent

# super + d
rofi -show combi
# {super + w, Print}
flameshot {gui, gui}
# super + shift + d
rofi -show run
# super + Return
alacritty -t Terminal
# super + KP_Enter
alacritty -t Terminal
# super + apostrophe
alacritty -t NVim -e vi
# super + semicolon
alacritty -t Htop -e htop
# super + semicolon
alacritty -t Vifm -e vifm
# super + shift + f
qutebrowser
# super + shift + ctrl + l
xsecurelock
# super + shift + +ctrl + alt + l
dash -c 'xsecurelock & systemctl hyrid-sleep'
# super + shift + ctrl + s
shutdown 0
# super + shift + p
 PASSWORD_STORE_DIR="$XDG_DATA_HOME/pass" passmenu

## "Locked Mode"
# super + shift + Up
pamixer -i 5
# super + shift + Down
pamixer -d 5
# super + shift + Right
pamixer --toggle-mute
# super + shift + Left
pamixer --toggle-mute
# XF86AudioRaiseVolume
pamixer -i 5
# XF86AudioLowerVolume
pamixer -d 5
# XF86AudioMute
pamixer --toggle-mute
