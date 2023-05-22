#!/bin/sh
ICON="󰃠 "
backlight=$(light | cut -d "." -f 1)

echo "[󰃠 $backlight]"
