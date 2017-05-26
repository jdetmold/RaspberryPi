#!/bin/bash
# Turn Raspberry Pi screen on or off

if [ $1 = "off" ]
then
        sudo sh -c "echo '1' >> /sys/class/backlight/rpi_backlight/bl_power"
        exit 1
elif [ $1 = "on" ]
then
        sudo sh -c "echo '0' >> /sys/class/backlight/rpi_backlight/bl_power"
        exit 1
else
        echo "Error: bad command"
        echo "Should be"
        echo "screenpower.sh [on/off]"
fi
echo " "