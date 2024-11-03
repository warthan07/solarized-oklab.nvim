local util = require("solarized-oklab.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local wezterm = util.template(
    [[
[colors]
foreground = "${fg}"
background = "${bg}"
cursor_bg = "${fg}"
cursor_border = "${fg}"
cursor_fg = "${bg}"
selection_bg = "${base00}"
selection_fg = "${black}"

ansi = ["${terminal_black}", "${red}", "${green}", "${yellow}", "${blue}", "${magenta}", "${cyan}", "${terminal_white}"]
brights = ["${terminal_black_hl}", "${red300}", "${green300}", "${yellow300}", "${blue300}", "${magenta300}", "${cyan300}", "${terminal_white_hl}"]

[colors.tab_bar]
inactive_tab_edge = "${base02}"
background = "${base03}"

[colors.tab_bar.active_tab]
fg_color = "${black}"
bg_color = "${blue}"

[colors.tab_bar.inactive_tab]
bg_color = "${base03}"
fg_color = "${base00}"

[colors.tab_bar.inactive_tab_hover]
bg_color = "${base03}"
fg_color = "${blue}"

[colors.tab_bar.new_tab_hover]
fg_color = "${black}"
bg_color = "${green}"

[colors.tab_bar.new_tab]
fg_color = "${base03}"
bg_color = "${green}"

[metadata]
aliases = []
author = "warthan07"
name = "${_style_name}"]],
    colors
  )
  return wezterm
end

return M
