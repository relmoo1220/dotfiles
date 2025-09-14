local wezterm = require("wezterm")

local act = wezterm.action

wezterm.on("update-status", function(window, _pane)
	-- This will be non-nil when you're in a key table (like resize mode)
	local name = window:active_key_table()
	if name then
		-- Show the active mode on the right side of the status bar
		window:set_right_status("TABLE: " .. name)
	else
		-- Clear it when not in a key table
		window:set_right_status("")
	end
end)

return {
	-- Set background color
	colors = {
		background = "#1c1621",
		foreground = "#c0c0c0",
	},

	-- Optional: make the window background slightly transparent
	window_background_opacity = 1,

	leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 },
	window_close_confirmation = "NeverPrompt",

	keys = {
		{ key = "s", mods = "LEADER", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
		{ key = "d", mods = "LEADER", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },

		{ key = "h", mods = "LEADER", action = act.ActivatePaneDirection("Left") },
		{ key = "j", mods = "LEADER", action = act.ActivatePaneDirection("Down") },
		{ key = "k", mods = "LEADER", action = act.ActivatePaneDirection("Up") },
		{ key = "l", mods = "LEADER", action = act.ActivatePaneDirection("Right") },

		{ key = "x", mods = "LEADER", action = act.CloseCurrentPane({ confirm = false }) },

		{
			key = "r",
			mods = "LEADER",
			action = act.ActivateKeyTable({
				name = "resize_pane",
				one_shot = false,
			}),
		},
	},

	key_tables = {
		resize_pane = {
			{ key = "H", action = act.AdjustPaneSize({ "Left", 3 }) },
			{ key = "J", action = act.AdjustPaneSize({ "Down", 3 }) },
			{ key = "K", action = act.AdjustPaneSize({ "Up", 3 }) },
			{ key = "L", action = act.AdjustPaneSize({ "Right", 3 }) },
			{ key = "Escape", action = "PopKeyTable" },
			{ key = "Enter", action = "PopKeyTable" },
		},
	},
}
