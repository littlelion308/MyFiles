#!/bin/sh
PKGS=$(pacman -Qq"$1")
PKG=$(echo "$PKGS" | fzf)
pacman -Qi "$PKG"
# echo "$PKGS" | fzf | pacman -Qi
