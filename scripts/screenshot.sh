#!/usr/bin/env sh

if [ -z "$XDG_PICTURES_DIR" ]; then
	XDG_PICTURES_DIR="$HOME/Pictures"
fi

swpy_dir="$HOME/.config/swappy"
save_dir="${2:-$XDG_PICTURES_DIR/screenshots}"
save_file=$(date +'%y-%m-%d_%H:%M:%S.png')
temp_screenshot="/tmp/screenshot.png"

mkdir -p $save_dir
mkdir -p $swpy_dir
echo -e "[Default]\nsave_dir=$save_dir\nsave_filename_format=$save_file" > $swpy_dir/config

function print_error
{
	cat <<"EOF"
    ./screenshot.sh <action>
    ...valid actions are...
        a : print all screens
        r : snip current screen
        m : print current screen
        c : print and cpoy to clipboard
EOF
}

case $1 in
a) # 截取所有屏幕并编辑
	grim $temp_screenshot && satty -f $temp_screenshot ;;
r) # 选取一个矩形区域或者鼠标点击截取一个窗口区域并编辑
	grim -g "$(slurp)" $temp_screenshot && satty -f $temp_screenshot ;;
m) # 截取当前屏幕并编辑
	grim -o eDP-1 $temp_screenshot && satty -f $temp_screenshot ;;
c) # 截取一个矩形区域或者鼠标点击截取一个窗口区域并复制到剪切板
	grim -g "$(slurp)" - | wl-copy ;;
*) # 无效参数则打印提示信息
	print_error ;;
esac

# 删除临时截图
rm "$temp_screenshot"

# 如果保存了截图则弹窗提示
if [ -f "$save_dir/$save_file" ]; then
	# dunstify "t1" -a "saved in $save_dir" -i "$save_dir/$save_file" -r 91190 -t 2200
	notify-send "save a screenshot"
fi
