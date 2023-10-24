#! /bin/bash

# 获取屏幕尺寸，计算中心坐标
screen_width=$(xdpyinfo | awk '/dimensions/{print $2}' | cut -d 'x' -f1)
screen_height=$(xdpyinfo | awk '/dimensions/{print $2}' | cut -d 'x' -f2)
x=$((screen_width/2))
y=$((screen_height/2))

# 设置提示位置
notify-send --hint=int:x:"$x" --hint=int:y:"$y" "Title" "Message"
