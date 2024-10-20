local wezterm = require("wezterm")
config = wezterm.config_builder()

config = {
	automatically_reload_config = true,
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	font = wezterm.font("JetBrainsMono Nerd Font"),
	window_decorations = "RESIZE",
	font_size = 16.7,

	-- Add the key binding for closing the current pane
	keys = {
		{
			key = "e",
			mods = "CMD",
			action = wezterm.action.CloseCurrentPane({ confirm = false }),
		},
	},
}

return config
