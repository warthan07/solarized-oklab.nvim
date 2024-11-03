local util = require("solarized-oklab.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local delta = util.template(
    [[
[delta]
  minus-style                   = syntax "${red500}"
  minus-non-emph-style          = syntax "${red500}"
  minus-emph-style              = syntax "${red700}"
  minus-empty-line-marker-style = syntax "${red500}"
  line-numbers-minus-style      = "${red700}"
  plus-style                    = syntax "${green700}"
  plus-non-emph-style           = syntax "${green500}"
  plus-emph-style               = syntax "${green700}"
  plus-empty-line-marker-style  = syntax "${green500}"
  line-numbers-plus-style       = "${green700}"
  line-numbers-zero-style       = "${base01}"
]],
    colors
  )
  return delta
end

return M
