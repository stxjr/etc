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
hsetroot -fill ~/pics/wall/floral.png

# start mpd (music)
mpd &

# compositor for transparency and stuff
compton -bcC --config ~/.comptonrc --shadow-exclude-reg x30+0+0 &

(sleep 3 && bar.sh)

sxhkd &
(sleep 4 && source ~/.config/bspwm/bspwmrc)
exec bspwm

#sxhkd -c ~/.config/sxhkd/sxhkdrc_wmutils &
#exec wew | lad
