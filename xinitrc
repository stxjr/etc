#!/bin/sh

# xrdb
xrdb ~/.xresources

# remap caps lock to control
setxkbmap -option 'caps:ctrl_modifier'

# load fonts
xset +fp ~/.fonts
xset fp rehash

# set wallpaper
hsetroot -fill ~/usr/img/wall/blur/snow.png

# set mouse to pointer
xsetroot -cursor_name left_ptr

# who needs a mouse
unclutter -idle 1 &

# compton
compton -bcC --config ~/.compton.conf

# music daemon
mpd &

# wm
sxhkd &
wrk -i &
wew | evwatch &
exec xwait
