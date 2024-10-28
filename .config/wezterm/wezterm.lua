local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- wsl
config.default_domain = "WSL:Ubuntu"
config.wsl_domains = {
  {
    name = "WSL:Ubuntu",
    distribution = "Ubuntu",
    default_cwd = "~",
  },
}

-- default
config.color_scheme = 'Nord'
config.automatically_reload_config = true
config.use_ime = true
config.initial_rows = 30
config.initial_cols = 120

-- fonts
config.font = wezterm.font("UDEV Gothic 35NFLG", { weight = "Bold" })
config.font_size = 11.0

-- cursor
config.default_cursor_style = 'BlinkingBlock'
config.cursor_blink_rate = 600
config.animation_fps = 1
config.cursor_blink_ease_in = 'Constant'
config.cursor_blink_ease_out = 'Constant'

-- window
config.window_close_confirmation = 'NeverPrompt'
config.window_background_opacity = 0.85
config.macos_window_background_blur = 20
config.window_decorations = "RESIZE"
config.window_frame = {
  inactive_titlebar_bg = "none",
  active_titlebar_bg = "none",
}
config.window_background_gradient = {
  colors = { "#000000" },
}

-- tabs
config.show_new_tab_button_in_tab_bar = false
config.show_close_tab_button_in_tabs = false
config.colors = {
  tab_bar = {
    inactive_tab_edge = "none",
  },
}

-- tabs format
-- local SOLID_LEFT_ARROW = wezterm.nerdfonts.ple_left_half_circle_thick
-- local SOLID_RIGHT_ARROW = wezterm.nerdfonts.ple_right_half_circle_thick

-- wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
--   local background = "#5c6d74"
--   local foreground = "#FFFFFF"
--   local edge_background = "none"

--   if tab.is_active then
--     background = "#ae8b2d"
--     foreground = "#FFFFFF"
--   end

--   local edge_foreground = background
--   local title = tab.active_pane.title

--   return {
--     { Background = { Color = edge_background } },
--     { Foreground = { Color = edge_foreground } },
--     { Text = SOLID_LEFT_ARROW },
--     { Background = { Color = background } },
--     { Foreground = { Color = foreground } },
--     { Text = title },
--     { Background = { Color = edge_background } },
--     { Foreground = { Color = edge_foreground } },
--     { Text = SOLID_RIGHT_ARROW },
--   }
-- end)

return config