#!/bin/sh
[[ $(printf 'script\nFile' | rofi -dmenu ) == 'script' ]] && paha=~/.local/bin || paha=~/Downloads
choosen=$(ls $paha --color=never | rofi -dmenu)
path=$paha/$choosen
[[ $paha == 'script' ]] && chmod +x $path
st vi $path
