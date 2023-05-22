#!/bin/sh

ICONn=" " # icon for normal temperatures
ICONc=" " # icon for critical temperatures

crit=70 # critical temperature

#temp=$(cat /sys/class/thermal/thermal_zone3/temp)
#temp="${temp%???}"
temp=$(sensors | grep "Package id 0:" | cut -d " " -f 5 | cut -d "+" -f 2 | cut -d "." -f 1)

if [ "$temp" -lt "$crit" ] ; then
    echo "[$ICONn$temp°C]"
else
    echo "[$ICONc$temp°C]"
fi
