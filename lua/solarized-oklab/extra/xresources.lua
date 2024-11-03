local util = require("solarized-oklab.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local xr = util.template(
    [[
! ${_style_name} colors for Xresources

*background: ${bg}
*foreground: ${fg}

*color0: ${terminal_black}
*color1: ${red}
*color2: ${green}
*color3: ${yellow}
*color4: ${blue}
*color5: ${magenta}
*color6: ${cyan}
*color7: ${terminal_white}

*color8: ${terminal_black_hl}
*color9: ${red300}
*color10: ${green300}
*color11: ${yellow300}
*color12: ${blue300}
*color13: ${magenta300}
*color14: ${cyan300}
*color15: ${terminal_white_hl}
 
]],
    colors
  )
  return xr
end

return M
