#!/bin/bash
# Control Raspberry Pi screen on/off or brightness 0-255

if [ $1 = "off" ]
  then
     sudo sh -c "echo '1' >> /sys/class/backlight/rpi_backlight/bl_power"
     exit 1
  elif [ $1 = "on" ]
    then
     sudo sh -c "echo '0' >> /sys/class/backlight/rpi_backlight/bl_power"
     exit 1
  elif [[ $1 == ?(-)+([0-9]) && $1 -ge 0 && $1 -le 255 ]]
    then
     sudo sh -c "echo "$1" >> /sys/class/backlight/rpi_backlight/brightness"
     exit 1
  else
    echo "Error: invalid input"
    echo "should be"
    echo "screenpower.sh [on/off]"
    echo "screenbrightness.sh [1-255]"
fi