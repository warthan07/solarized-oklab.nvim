local util = require("solarized-oklab.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local footColors = {}
  for k, v in pairs(colors) do
    if type(v) == "string" then
      footColors[k] = v:gsub("^#", "")
    end
  end

  local foot = util.template(
    [[
[cursor]
color=${fg} ${bg}

[colors]
foreground=${fg}
background=${bg}
selection-foreground=${black}
selection-background=${base00}
urls=${green500}

regular0=${terminal_black}
regular1=${red}
regular2=${green}
regular3=${yellow}
regular4=${blue}
regular5=${magenta}
regular6=${cyan}
regular7=${terminal_white}

bright0=${terminal_black_hl}
bright1=${red300}
bright2=${green300}
bright3=${yellow300}
bright4=${blue300}
bright5=${magenta300}
bright6=${cyan300}
bright7=${terminal_white_hl}

16=${orange}
17=${red}]],
    footColors
  )

  return foot
end

return M
