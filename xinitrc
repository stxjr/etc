#!/bin/sh

# load Xresources
xrdb ~/.Xresources

# load fonts
xset +fp ~/.fonts
xset +fp /usr/share/fonts/bitmap
xset fp rehash

# set wallpaper
hsetroot -tile ~/usr/pics/wall/blacktile.png

# start mpd (music dameon)
mpd &

# start unclutter (hides mouse when inactive)
unclutter -idle 1 &

bar.sh

sxhkd -c ~/.config/sxhkd/common &
exec 2bwm
