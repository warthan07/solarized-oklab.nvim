local util = require("solarized-oklab.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local alacrittyColors = {}
  for k, v in pairs(colors) do
    if type(v) == "string" then
      alacrittyColors[k] = v:gsub("^#", "0x")
    end
  end

  local alacritty = util.template(
    [[
# ${_style_name} colors for Alacritty
colors:
  # Default colors
  primary:
    background: '${bg}'
    foreground: '${fg}'

  # Normal colors
  normal:
    black:   '${terminal_black}'
    red:     '${red}'
    green:   '${green}'
    yellow:  '${yellow}'
    blue:    '${blue}'
    magenta: '${magenta}'
    cyan:    '${cyan}'
    white:   '${terminal_white}'

  # Bright colors
  bright:
    black:   '${terminal_black_hl}'
    red:     '${red300}'
    green:   '${green300}'
    yellow:  '${yellow300}'
    blue:    '${blue300}'
    magenta: '${magenta300}'
    cyan:    '${cyan300}'
    white:   '${terminal_white_hl}'

  indexed_colors:
    - { index: 16, color: '${orange}' }
    - { index: 17, color: '${red}' }
    
  ]],
    alacrittyColors
  )

  return alacritty
end

return M
