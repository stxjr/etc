#!/bin/sh

# xrdb
xrdb ~/.Xresources

# load fonts
xset +fp ~/.fonts
xset +fp /usr/share/fonts/bitmap
xset fp rehash

# set wallpaper
hsetroot -tile ~/usr/pics/wall/whitetile.png

# moosics
mpd &

# who needs a mouse
unclutter -idle 1 &

# fire up the ol' irc
[ ! -e /tmp/irc-dtach ] && dtach -A /tmp/irc-dtach weechat

# start bar
bar.sh

sxhkd -c ~/.config/sxhkd/common &
exec 2bwm
