#!/bin/sh

###
### Bspwm Hotkeys
###


# super + ctrl + shift + {e,s}
{ bspc quit, shutdown 0}

# super + m
bspc desktop -l next

# super + {_,shift + }{h,j,k,l}
bspc node -{f,s} {west,south,north,east}

# super + {t,shift space,f}
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

###
###
###
###















































