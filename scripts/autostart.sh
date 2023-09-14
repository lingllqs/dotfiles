#!/bin/bash

_thisdir=$(
	cd $(dirname $0)
	pwd
)

daemons() {
	[ $1 ] && sleep $1
	$_thisdir/statusbar/statusbar.sh cron &
	fcitx5 &
	xss-lock -- ~/scripts/blurlock.sh &
	feh --bg-fill --randomize ~/Pictures/wallpaper/1.jpg
	picom --experimental-backends &
	dunst &
	flameshot &
	# /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
	/usr/lib/polkit-kde-authentication-agent-1 &
	# /usr/lib/polkit-1/polkit-agent-helper-1 &
}

daemons 1 &
