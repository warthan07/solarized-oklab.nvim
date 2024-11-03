local util = require("solarized-oklab.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local zathura = util.template(
    [[
# ${_style_name} color theme for Zathura
#
set notification-error-bg "${red}"
set notification-error-fg "${black}"
set notification-warning-bg "${yellow}"
set notification-warning-fg "${black}"
set notification-bg "${bg}"
set notification-fg "${fg}"
set completion-bg "${bg}"
set completion-fg "${base00}"
set completion-group-bg "${bg}"
set completion-group-fg "${base00}"
set completion-highlight-bg "${base02}"
set completion-highlight-fg "${fg}"
set index-bg "${bg}"
set index-fg "${fg}"
set index-active-bg "${base02}"
set index-active-fg "${fg}"
set inputbar-bg "${bg}"
set inputbar-fg "${fg}"
set statusbar-bg "${bg}"
set statusbar-fg "${fg}"
set highlight-color "${yellow}"
set highlight-active-color "${green}"
set default-bg "${bg}"
set default-fg "${fg}"
set render-loading true
set render-loading-fg "${bg}"
set render-loading-bg "${fg}"
#
# Recolor mode settings
# <C-r> to switch modes
#
set recolor-lightcolor "${bg}"
set recolor-darkcolor "${fg}"
]],
    colors
  )
  return zathura
end

return M
