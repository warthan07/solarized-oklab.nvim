local util = require("solarized-oklab.util")

local M = {}

local function hex2alphahex(value)
  return "#ff" .. value:sub(2)
end

--- @param colors ColorScheme
function M.generate(colors)
  local qt_colors = {}
  for k, v in pairs(colors) do
    if type(v) == "string" then
      qt_colors[k] = hex2alphahex(v)
    end
  end

  local qt_theme = {
    {"base0",   "base0",   "base01" }, -- Window Text
    {"base03",  "base03",  "base03" }, -- Button Background
    {"base3",   "base3",   "base3"  }, -- Bright
    {"base2",   "base2",   "base2"  }, -- Less Bright
    {"black",   "black",   "black"  }, -- Dark
    {"base04",  "base04",  "base04" }, -- Less Dark
    {"base0",   "base0",   "base01" }, -- Normal Text
    {"base1",   "base1",   "base0"  }, -- Bright Text
    {"base0",   "base0",   "base01" }, -- Button Text
    {"black",   "black",   "black"  }, -- Normal background
    {"black",   "black",   "black"  }, -- Window
    {"black",   "black",   "black"  }, -- Shadow
    {"violet",  "violet",  "violet" }, -- Highlight
    {"black",   "black",   "base03" }, -- Highlight Text
    {"magenta", "magenta", "magenta"}, -- Link
    {"violet",  "violet",  "violet" }, -- Visited Link
    {"base04",  "base04",  "base04" }, -- Alternate Background
    {"base1",   "base1",   "base1"  }, -- Default
    {"base03",  "base03",  "base03" }, -- Tooltip Background
    {"base1",   "base1",   "base1"  }, -- Tooltip Text
    {"base01",  "base01",  "base01" }  -- Placeholder Text
  }
  local theme = "[ColorScheme]"
  local keys = {"active_colors", "disabled_colors", "inactive_colors"}
  for i=1,3 do
  	theme = theme .. "\n" .. keys[i] .. "=${" .. qt_theme[1][i] .. "}"
    for j=2,#qt_theme do
	  theme = theme .. ", ${" .. qt_theme[j][i] .. "}"
	end
  end
  return util.template(theme, qt_colors)
end

return M
