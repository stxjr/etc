#!/bin/sh

# xrdb
xrdb ~/.Xresources

# load fonts
xset +fp ~/.fonts
xset +fp /usr/share/fonts/bitmap
xset fp rehash

# set wallpaper
hsetroot -fill ~/usr/pics/wall/roadblur.png

# moosics
mpd &

# who needs a mouse
unclutter -idle 1 &

# fire up the ol' irc
dtach -A /tmp/irc-dtach weechat

# start bar
statusbar

sxhkd -c ~/.config/sxhkd/common &
exec 2bwm
