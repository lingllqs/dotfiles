local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 16
config.color_scheme = "Catppuccin Mocha"
config.enable_tab_bar = false
config.window_padding = {
	left = 2,
	right = 2,
	top = 2,
	bottom = 2,
}

return config
