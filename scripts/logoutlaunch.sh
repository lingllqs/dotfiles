#!/usr/bin/env sh

if pgrep -x "wlogout" > /dev/null
then
    pkill -x "wlogout"
    exit 0
fi

wl_layout="${XDG_CONFIG_HOME:-$HOME/.config}/wlogout/layout_$1"
wl_template="${XDG_CONFIG_HOME:-$HOME/.config}/wlogout/style_$1.css"

if [ ! -f $wl_layout ] || [ ! -f $wl_template ] ; then
    echo "ERROR: Config $1 not found..."
    exit 1;
fi

# detect monitor res
x_mon=$(hyprctl -j monitors | jq '.[] | select(.focused==true) | .width')
y_mon=$(hyprctl -j monitors | jq '.[] | select(.focused==true) | .height')
hypr_scale=$(hyprctl -j monitors | jq '.[] | select (.focused == true) | .scale' | sed 's/\.//')


# scale config layout and style
case $1 in
    1)  wl_columns=6
        export mgn=$(( y_mon * 28 / hypr_scale ))
        export hvr=$(( y_mon * 23 / hypr_scale )) ;;
    2)  wl_columns=2
        export x_mgn=$(( x_mon * 35 / hypr_scale ))
        export y_mgn=$(( y_mon * 25 / hypr_scale ))
        export x_hvr=$(( x_mon * 32 / hypr_scale ))
        export y_hvr=$(( y_mon * 20 / hypr_scale )) ;;
esac

# 字体大小
export font_size=$(( y_mon * 2 / 100 ))


hypr_radio=$(hyprctl -j getoption decoration:rounding | jq '.int')
hypr_border=$(hyprctl -j getoption general:border_size | jq '.int')
export active_rad=$(( hypr_radio * 5 ))
export button_rad=$(( hypr_radio * 8 ))

# eval config files
wl_style=`envsubst < $wl_template`

# launch wlogout
wlogout -b $wl_columns -c 0 -r 0 -m 0 --layout $wl_layout --css <(echo "$wl_style") --protocol layer-shell

