#!/bin/sh

# load Xresources
xrdb ~/.Xresources

# adjust screen temperature
redshift -o -l 0:0 -m randr -t 5250:5250

# load fonts
xset +fp ~/.fonts
xset +fp /usr/share/fonts/bitmap
xset fp rehash

# set wallpaper
hsetroot -fill ~/pics/wall/redforest.jpg

# start mpd (music)
mpd &

# compositor for transparency and stuff
#compton &

# start unclutter (hides mouse when inactive)
unclutter -idle 1 &

bar.sh
sxhkd &
exec 2bwm
