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
	-- Set font
	font = wezterm.font("FiraMono Nerd Font Mono"),
	-- Set font size
	font_size = 13.0,
	-- Set background color
	colors = {
		background = "#141414",
		foreground = "#c0c0c0",
	},

	-- Optional: make the window background slightly transparent
	window_background_opacity = 1,

	leader = { key = ".", mods = "CMD", timeout_milliseconds = 1000 },
	window_close_confirmation = "NeverPrompt",
	alternate_buffer_wheel_scroll_speed = 0,

	keys = {
		{ key = "n", mods = "LEADER", action = act.ActivateTabRelative(1) }, -- next tab
		{ key = "p", mods = "LEADER", action = act.ActivateTabRelative(-1) }, -- previous tab
		{ key = "1", mods = "LEADER", action = act.ActivateTab(0) },
		{ key = "2", mods = "LEADER", action = act.ActivateTab(1) },
		{ key = "3", mods = "LEADER", action = act.ActivateTab(2) },
		{ key = "4", mods = "LEADER", action = act.ActivateTab(3) },
		{ key = "5", mods = "LEADER", action = act.ActivateTab(4) },
		{ key = "6", mods = "LEADER", action = act.ActivateTab(5) },
		{ key = "7", mods = "LEADER", action = act.ActivateTab(6) },
		{ key = "8", mods = "LEADER", action = act.ActivateTab(7) },
		{ key = "9", mods = "LEADER", action = act.ActivateTab(8) },

		{ key = "s", mods = "LEADER", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
		{ key = "d", mods = "LEADER", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },

		{ key = "h", mods = "LEADER", action = act.ActivatePaneDirection("Left") },
		{ key = "j", mods = "LEADER", action = act.ActivatePaneDirection("Down") },
		{ key = "k", mods = "LEADER", action = act.ActivatePaneDirection("Up") },
		{ key = "l", mods = "LEADER", action = act.ActivatePaneDirection("Right") },

		{ key = "x", mods = "LEADER", action = act.CloseCurrentPane({ confirm = false }) },

		-- join a pane from another tab into this one, 50/50 on the right
		{
			key = "m",
			mods = "LEADER",
			action = wezterm.action_callback(function(window, pane)
				local choices = {}
				local current = window:active_tab():tab_id()
				for _, tab in ipairs(window:mux_window():tabs()) do
					if tab:tab_id() ~= current then
						for _, p in ipairs(tab:panes()) do
							table.insert(choices, {
								id = tostring(p:pane_id()),
								label = tab:get_title() .. " [" .. p:pane_id() .. "] " .. p:get_title(),
							})
						end
					end
				end
				window:perform_action(
					act.InputSelector({
						title = "Join pane into this tab",
						choices = choices,
						action = wezterm.action_callback(function(_, target, id)
							if id then
								wezterm.run_child_process({
									wezterm.executable_dir .. "/wezterm",
									"cli", "split-pane", "--right",
									"--pane-id", tostring(target:pane_id()),
									"--move-pane-id", id,
								})
							end
						end),
					}),
					pane
				)
			end),
		},

		-- detach the current pane into its own tab (inverse of join)
		{
			key = "b",
			mods = "LEADER",
			action = wezterm.action_callback(function(_, pane)
				pane:move_to_new_tab():activate()
			end),
		},

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
