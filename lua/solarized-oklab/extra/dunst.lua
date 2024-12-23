local util = require("solarized-oklab.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local dunst = util.template(
    [[
# ${_style_name} colors for dunst
# For more configuraion options see https://github.com/dunst-project/dunst/blob/master/dunstrc

[urgency_low]
    background = "${bg}"
    foreground = "${fg}"
    frame_color = "${fg}"

[urgency_normal]
    background = "${bg}"
    foreground = "${fg}"
    frame_color = "${fg}"

[urgency_critical]
    background = "${base03}"
    foreground = "${error}"
    frame_color = "${error}"
]],
    colors
  )
  return dunst
end

return M
