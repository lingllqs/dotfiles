#!/usr/bin/env sh

wallpaper_switch() {
	swww img $(find $HOME/Pictures/wallpaper/ -maxdepth 1 -type f | shuf -n 1) --transition-type any
}

wallpaper_switch
