#!/bin/sh
bspc desktop -f '^11'
alacritty -e pulsemixer&
pavucontrol&
bspc desktop -f '^10'
alacritty -e htop&
teams&
