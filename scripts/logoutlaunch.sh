#!/usr/bin/env bash

if pgrep -x "wlogout" > /dev/null
then
    pkill -x "wlogout"
    exit 0
fi

# wl_layout="${XDG_CONFIG_HOME:-$HOME/.config}/wlogout/layout_$1"
# wl_style="${XDG_CONFIG_HOME:-$HOME/.config}/wlogout/style_$1.css"
#
# if [ ! -f $wl_layout ] || [ ! -f $wl_style ] ; then
#     echo "ERROR: Config $1 not found..."
#     exit 1;
# fi
#
# # detect monitor res
# # x_mon=$(hyprctl -j monitors | jq '.[] | select(.focused==true) | .width')
# # y_mon=$(hyprctl -j monitors | jq '.[] | select(.focused==true) | .height')
# # hypr_scale=$(hyprctl -j monitors | jq '.[] | select (.focused == true) | .scale' | sed 's/\.//')
#
# x_mon=$(niri msg outputs | grep "Current mode" | awk '{print $3}' | cut -d"x" -f1)
# y_mon=$(niri msg outputs | grep "Current mode" | awk '{print $3}' | cut -d"x" -f2)
# hypr_scale=$(niri msg outputs | grep "Scale" | awk '{print $2}')
#
#
#
# # scale config layout and style
# case $1 in
#     1)  wl_columns=6
#         export mgn=$(( y_mon * 28 / hypr_scale ))
#         export hvr=$(( y_mon * 23 / hypr_scale )) ;;
#     2)  wl_columns=2
#         export x_mgn=$(( x_mon * 35 / hypr_scale ))
#         export y_mgn=$(( y_mon * 25 / hypr_scale ))
#         export x_hvr=$(( x_mon * 32 / hypr_scale ))
#         export y_hvr=$(( y_mon * 20 / hypr_scale )) ;;
# esac
#
# # 字体大小
# export font_size=$(( y_mon * 2 / 100 ))
#
#
# # hypr_radio=$(hyprctl -j getoption decoration:rounding | jq '.int')
# # hypr_border=$(hyprctl -j getoption general:border_size | jq '.int')
#
# # hypr_radio=3
# # hypr_border=3
# #
# # export active_rad=$(( hypr_radio * 5 ))
# # export button_rad=$(( hypr_radio * 8 ))
#
# export active_rad=15
# export button_rad=24
#
# # eval config files
# wl_style=`envsubst < $wl_style`
#
# # launch wlogout
# wlogout -b $wl_columns -c 0 -r 0 -m 0 --layout $wl_layout --css <(echo "$wl_style") --protocol layer-shell
#
wl_layout="${XDG_CONFIG_HOME:-$HOME/.config}/wlogout/layout"
wl_style="${XDG_CONFIG_HOME:-$HOME/.config}/wlogout/style.css"
wlogout -b 6 -c 0 -r 0 -m 0 --layout $wl_layout --css $wl_style
