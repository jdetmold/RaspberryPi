#!/bin/bash
# Set Raspberry Pi screen brightness

if [[ $1 -ge 0 && $1 -le 255 ]] ; then 
	sudo sh -c "echo "$1" >> /sys/class/backlight/rpi_backlight/brightness"
else
	echo "Error: invalid input"
	echo "should be"
	echo "screenbrightness.sh [1-255]"
fi