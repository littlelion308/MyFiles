#!/bin/sh
inputdir=$1
basedev=$2
# echo "$inputdir"
# echo "$basedev"
unlist=$( ls /dev| grep -- "$basedev" |cat )
# echo "$unlist"
# echo "$unlist"
for item in $unlist; do
	sudo mount "/dev/$item" "/mnt"
	# sudo rm /mnt/*
	sudo cp "$inputdir" "/mnt/"
	sudo umount /mnt
	sudo umount /mnt
done
