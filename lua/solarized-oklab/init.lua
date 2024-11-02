local util = require("solarized-oklab.util")
local theme = require("solarized-oklab.theme")
local config = require("solarized-oklab.config")

local M = {}

function M._load(style)
  if style and not M._style then
    M._style = require("solarized-oklab.config").options.style
  end
  if not style and M._style then
    require("solarized-oklab.config").options.style = M._style
    M._style = nil
  end
  M.load({ style = style, use_background = style == nil })
end

---@param opts Config|nil
function M.load(opts)
  if opts then
    require("solarized-oklab.config").extend(opts)
  end
  util.load(theme.setup())
end

M.setup = config.setup

-- keep for backward compatibility
M.colorscheme = M.load

return M
