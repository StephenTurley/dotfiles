#!/bin/sh

setxkbmap us
xrandr --dpi 166

[ -f "${XDG_CONFIG_HOME}/.xprofile" ] && . "${XDG_CONFIG_HOME}/.xprofile"

exec dwm
