#!/bin/bash

_thisdir=$(cd $(dirname $0);pwd)

daemons ()
{
  [ $1 ] && sleep $1
  $_thisdir/statusbar/statusbar.sh cron &
  xss-lock -- ~/scripts/blurlock.sh &
  picom &
  dunst &
  fcitx5 &
  flameshot &
}

daemons 1 &
