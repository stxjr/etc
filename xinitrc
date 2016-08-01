#!/bin/sh

# xrdb
xrdb ~/.Xresources

# remap caps lock to control
setxkbmap -option 'caps:ctrl_modifier'

# load fonts
xset +fp ~/.fonts
xset +fp /usr/share/fonts/bitmap
xset fp rehash

# set wallpaper
hsetroot -fill ~/usr/img/wall/blur/dragon.png

# set mouse to pointer
xsetroot -cursor_name left_ptr

# who needs a mouse
unclutter -idle 1 &

# fire up the ol' irc
dtach -n /tmp/irc-dtach weechat

# music daemon
mpd &

# wm
sxhkd &
wrk -i &
wew | evwatch &
exec xwait
