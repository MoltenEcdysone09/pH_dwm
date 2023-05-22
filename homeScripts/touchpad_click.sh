#!/bin/bash

touchpad_id=$(xinput --list | awk '/Touchpad/ {print $6}' | tr -d 'id=')
tapping_id=$(xinput --list-props $touchpad_id | awk '/libinput Tapping Enabled \(/ {print $4}' | tr -d '():')

# Enable Tapping
xinput --set-prop $touchpad_id $tapping_id 1
