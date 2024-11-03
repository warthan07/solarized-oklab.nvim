local util = require("solarized-oklab.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local tilix = util.template(
    [[
{
    "name": "${_style_name}",
    "comment": "",
    "use-theme-colors": false,
    "foreground-color": "${fg}",
    "background-color": "${bg}",
    "palette": [
        "${terminal_black}",
        "${red}",
        "${green}",
        "${yellow}",
        "${blue}",
        "${magenta}",
        "${cyan}",
        "${terminal_white}",
        "${terminal_black_hl}",
        "${red300}",
        "${green300}",
        "${yellow300}",
        "${blue300}",
        "${magenta300}",
        "${cyan300}",
        "${terminal_white_hl}"
    ]
}
  ]],
    colors
  )
  return tilix
end

return M
