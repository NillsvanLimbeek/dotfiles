-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
-- changing the color scheme:
config.color_scheme = "catppuccin-mocha"

-- font
config.front_end = "OpenGL"
config.font = wezterm.font("GeistMono Nerd Font", { weight = "DemiBold" })
config.font_size = 13

-- keybindings
config.enable_kitty_keyboard = true
config.enable_csi_u_key_encoding = false

config.freetype_load_flags = "NO_HINTING"

-- custom background on startup
local background = { "goku.png", "kajiu.png", "luffy.png", "midoriya.png", "tanjiro.png", "pikachu.png", "batman.png" }

local function random_background()
	return background[math.random(#background)]
end

local original_path = "/Users/nillsvanlimbeek/.config/nvim-lazy/backgrounds/kajiu.png"
local new_path = string.gsub(original_path, "kajiu.png", random_background())

config.background = {
	{
		source = {
			File = new_path,
		},
		vertical_align = "Bottom",
		horizontal_align = "Right",
	},
}

-- window padding
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

-- show character under cursor
config.force_reverse_video_cursor = true

-- tab styling
config.window_frame = {
	font = wezterm.font("GeistMono Nerd Font", { weight = "Bold" }),
	font_size = 11,
}

-- and finally, return the configuration to wezterm
return config
