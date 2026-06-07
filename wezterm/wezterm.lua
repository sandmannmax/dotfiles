-- Initialize Configuration
local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Configs
config.font = wezterm.font("JetBrains Mono")
config.font_size = 12
config.color_scheme = "tokyonight_night"
config.window_decorations = "RESIZE"

-- Keys
config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 }
config.keys = {
	-- Pane keybindings
	{ key = "%", mods = "LEADER", action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	{ key = '"', mods = "LEADER", action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }) },
	{ key = "h", mods = "LEADER", action = wezterm.action.ActivatePaneDirection("Left") },
	{ key = "j", mods = "LEADER", action = wezterm.action.ActivatePaneDirection("Down") },
	{ key = "k", mods = "LEADER", action = wezterm.action.ActivatePaneDirection("Up") },
	{ key = "l", mods = "LEADER", action = wezterm.action.ActivatePaneDirection("Right") },
	{ key = "x", mods = "LEADER", action = wezterm.action.CloseCurrentPane({ confirm = true }) },
	-- Tab keybindings
	{ key = "c", mods = "LEADER", action = wezterm.action.SpawnTab("CurrentPaneDomain") },
	{ key = "p", mods = "LEADER", action = wezterm.action.ActivateTabRelative(-1) },
	{ key = "n", mods = "LEADER", action = wezterm.action.ActivateTabRelative(1) },
	{ key = "t", mods = "LEADER", action = wezterm.action.ShowTabNavigator },
}

-- Tab Bar Configuration
config.use_fancy_tab_bar = false

return config
