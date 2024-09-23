#!/usr/bin/env bash
rofi \
	-show drun \
	-scroll-method 0 \
	-drun-match-fields all \
	-no-drun-show-actions \
	-terminal alacritty \
	-theme $HOME/.config/rofi/config/launcher_1.rasi
