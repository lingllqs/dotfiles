#!/usr/bin/env sh

if [ -z "$XDG_PICTURES_DIR" ]; then
	XDG_PICTURES_DIR="$HOME/Pictures"
fi

swpy_dir="$HOME/.config/swappy"
save_dir="${2:-$XDG_PICTURES_DIR/screenshots}"
save_file=$(date +'%y%m%d_%Hh%Mm%Ss_screenshot.png')
temp_screenshot="/tmp/screenshot.png"

mkdir -p $save_dir
mkdir -p $swpy_dir
echo -e "[Default]\nsave_dir=$save_dir\nsave_filename_format=$save_file" > $swpy_dir/config

function print_error
{
	cat <<"EOF"
    ./screenshot.sh <action>
    ...valid actions are...
        p : print all screens
        s : snip current screen
        m : print focused monitor
EOF
}

case $1 in
p) # 截取所有屏幕并编辑
	grimblast copysave screen $temp_screenshot && swappy -f $temp_screenshot ;;
s) # 选取一个矩形区域或者鼠标点击截取一个窗口区域并编辑
	grimblast --freeze copysave area $temp_screenshot && swappy -f $temp_screenshot ;;
m) # 截取当前屏幕并编辑
	grimblast copysave output $temp_screenshot && swappy -f $temp_screenshot ;;
c) # 截取一个矩形区域或者鼠标点击截取一个窗口区域并复制到剪切板
    grimblast --freeze copy area $temp_screenshot ;;
*) # 无效参数则打印提示信息
	print_error ;;
esac

# 删除临时截图
rm "$temp_screenshot"

# 如果保存了截图则弹窗提示
if [ -f "$save_dir/$save_file" ]; then
	dunstify "t1" -a "saved in $save_dir" -i "$save_dir/$save_file" -r 91190 -t 2200
fi
