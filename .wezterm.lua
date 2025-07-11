local wezterm = require 'wezterm'
local config = {}
config.font_size = 11
config.color_scheme = 'Tokyo Night'
config.window_frame = {
  -- title bar
  active_titlebar_bg = '#333333',
  inactive_titlebar_bg = '#333333',
}
config.colors = {
  tab_bar = {
    inactive_tab_edge = '#575757'
  }
}

config.font = wezterm.font 'JetBrains Mono'

return config
