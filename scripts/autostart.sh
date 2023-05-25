#!/bin/bash

_thisdir=$(cd $(dirname $0);pwd)

daemons ()
{
  [ $1 ] && sleep $1
  $_thisdir/statusbar/statusbar.sh cron &
  xss-lock -- ~/scripts/blurlock.sh &
  fcitx5 &
  # picom &
  picom --experimental-backends &
  dunst &
  flameshot &
}

daemons 0 &
