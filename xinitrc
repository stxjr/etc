#!/bin/sh

# xrdb
xrdb ~/.Xresources

# remap caps lock to control
setxkbmap -option 'caps:ctrl_modifier'
xcape -e 'Caps_Lock=Escape'

# load fonts
xset +fp ~/.fonts
xset +fp /usr/share/fonts/bitmap
xset fp rehash

# set wallpaper
hsetroot -tile ~/usr/pics/wall/steps.png

# set mouse to pointer
xsetroot -cursor_name left_ptr

# who needs a mouse
unclutter -idle 1 &

# fire up the ol' irc
dtach -a /tmp/irc-dtach weechat

# music daemon
mpd &

# start bar
statusbar

# wm
sxhkd -c ~/.config/sxhkd/common &
exec 2bwm
