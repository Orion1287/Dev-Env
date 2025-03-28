#!/bin/sh
slstatus &
feh --bg-scale ~/.config/wallpapers/a_building_with_trees_in_the_background.jpg &
picom -b &
redshift -O 4200 &
xrandr --output HDMI-1 --left-of eDP-1
exec dwm

