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
hsetroot -tile ~/pics/wall/whitetile.png

# start mpd (music)
mpd &

# compositor for transparency and stuff
compton -bc --config ~/.compton.conf &

# start unclutter (hides mouse when inactive)
unclutter &

(sleep 3 && bar.sh)

sxhkd &
exec bspwm
