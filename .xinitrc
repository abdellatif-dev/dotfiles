#!/bin/sh 
cd ~
sh ~/.config/awesome/scripts/keyboardxmodmap.sh &
sh ~/.config/polybar/launch.sh &
exec awesome
