#!/bin/sh

setxkbmap us

[ -f "${XDG_CONFIG_HOME}/.xprofile" ] && . "${XDG_CONFIG_HOME}/.xprofile"
exec dwm
