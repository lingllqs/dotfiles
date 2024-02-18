#!/usr/bin/env sh

wall_set = $HOME/Pictures/wallpaper/女孩-叶子.jpg

wallpaper_set() {
	swww img "$wall_set" \
		--transition-bezier .43,1.19,1,.4 \
		--transition-duration 0.7 \
		--transition-fps 60 \
		--invert-y \
		--transition-pos "$(hyprctl cursorpos)"
}

swww query
if [ $? -eq 1 ]; then
	swww init
fi

wallpaper_set
