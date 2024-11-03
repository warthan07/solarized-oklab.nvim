local util = require("solarized-oklab.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local kitty = util.template(
    [[
# vim:ft=kitty

## name: ${_style_name}
## license: MIT
## author: warthan07
## upstream: ${_upstream_url}


background ${bg}
foreground ${fg}
selection_background ${base02}
selection_foreground ${fg}
url_color ${green700}
cursor ${fg}
cursor_text_color ${bg}

# Tabs
active_tab_background ${blue}
active_tab_foreground ${black}
inactive_tab_background ${base03}
inactive_tab_foreground ${base00}
#tab_bar_background ${black}

# Windows
active_border_color ${blue}
inactive_border_color ${base02}

# normal
color0 ${terminal_black}
color1 ${red}
color2 ${green}
color3 ${yellow}
color4 ${blue}
color5 ${magenta}
color6 ${cyan}
color7 ${terminal_white}

# bright
color8 ${terminal_black_hl}
color9 ${red300}
color10 ${green300}
color11 ${yellow300}
color12 ${blue300}
color13 ${magenta300}
color14 ${cyan300}
color15 ${terminal_white_hl}

# extended colors
color16 ${orange}
color17 ${red}
]],
    colors
  )
  return kitty
end

return M
