local util = require("solarized-oklab.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local terminator = util.template(
    [=[
[[${_style_name}]]
  palette = "${terminal_black}:${red}:${green}:${yellow}:${blue}:${magenta}:${cyan}:${terminal_white}:${terminal_black_hl}:${red300}:${green300}:${yellow300}:${blue300}:${magenta300}:${cyan300}:${terminal_white_hl}"
  background_color = "${bg}"
  foreground_color = "${fg}"
  ]=],
    colors
  )
  return terminator
end

return M
