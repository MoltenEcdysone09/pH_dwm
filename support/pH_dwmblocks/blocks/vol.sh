#!/bin/bash

#Increase Volume
#amixer -q -D pulse sset Master 5%+

#Decrese Volume
#amixer -q -D pulse sset Master 5%-

#Statusbar Script
#voll=$(amixer -D pulse sget Master | grep 'Left:' | awk -F'[][]' '{ print $2 }')
vllv=$(amixer sget Master | awk -F"[][]" '/dB/ { print $2 }' | cut -d "%" -f 1)
vlst=$(amixer sget Master | awk -F"[][]" '/dB/ { print $6 }')
if [[ "$vlst" == "off" ]] ; then
    echo "[󰝟 $vllv]"
else
    echo "[󰕾 $vllv]"
fi
#Toggle Mute/Unmute
#amixer -D pulse set Master toggle

#Check if Mute/Unmute
#Returns 0 if Mute and 2 if Unmute
#amixer -D pulse get Master | tail -2 | grep -c '\[on\]'

#Run xmodmap -pke to find out the key values
#For volume up and down XF86AudioRaiseVolume and XF86AudioLowerVolume
# For mute XF86AudioMute
