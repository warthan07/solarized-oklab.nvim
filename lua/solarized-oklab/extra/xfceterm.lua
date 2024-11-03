local util = require("solarized-oklab.util")

local M = {}

-- @param colors ColorScheme
function M.generate(colors)
  local xfceterm = util.template(
    [[
[Scheme]
Name=${_style_name}
ColorBackground=${bg}
ColorForeground=${fg}

ColorSelectionBackground=${base02}
ColorSelection=${base1}

ColorPalette=${terminal_black};${red};${green};${yellow};${blue};${magenta};${cyan};${terminal_white};${terminal_black_hl};${red300};${green300};${yellow300};${blue300};${magenta300};${cyan300};${terminal_white_hl}
]],
	colors
  )
  return xfceterm
end

return M
