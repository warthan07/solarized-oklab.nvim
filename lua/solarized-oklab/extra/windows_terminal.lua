local util = require("solarized-oklab.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local windows_terminal = util.template(
    [[
# Add the following object to your Windows Terminal configuration
# https://learn.microsoft.com/en-us/windows/terminal/customize-settings/color-schemes#creating-your-own-color-scheme
{
    "name": "${_style_name}",

    "background": "${bg}",
    "foreground": "${fg}",

    "black": "${terminal_black}",
    "red": "${red}",
    "green": "${green}",
    "yellow": "${yellow}"
    "blue": "${blue}",
    "purple": "${magenta}",
    "cyan": "${cyan}",
    "white": "${terminal_white}",

    "brightBlack": "${terminal_black_hl}",
    "brightRed": "${red300}",
    "brightGreen": "${green300}",
    "brightYellow": "${yellow300}",
    "brightBlue": "${blue300}",
    "brightPurple": "${purple300}",
    "brightCyan": "${cyan300}",
    "brightWhite": "${terminal_white_hl}",

    "cursorColor": "${fg}",
    "selectionBackground": "${base02}",
}
]],
    colors
  )

  return windows_terminal
end

return M
