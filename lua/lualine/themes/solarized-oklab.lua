local colors = require("solarized-oklab.colors").setup({ transform = true })
local config = require("solarized-oklab.config").options

local solarized_oklab = {}

solarized_oklab.normal = {
  a = { bg = colors.blue, fg = colors.black },
  b = { bg = colors.base0, fg = colors.base04 },
  c = { bg = colors.bg_statusline, fg = colors.fg },
}

solarized_oklab.insert = {
  a = { bg = colors.green, fg = colors.black },
}

solarized_oklab.command = {
  a = { bg = colors.yellow, fg = colors.black },
}

solarized_oklab.visual = {
  a = { bg = colors.magenta, fg = colors.black },
}

solarized_oklab.replace = {
  a = { bg = colors.red, fg = colors.black },
}

solarized_oklab.terminal = {
  a = { bg = colors.green, fg = colors.black },
}

solarized_oklab.inactive = {
  a = { bg = colors.bg_statusline, fg = colors.blue },
  b = { bg = colors.bg_statusline, fg = colors.fg, gui = "bold" },
  c = { bg = colors.bg_statusline, fg = colors.fg },
}

if config.lualine_bold then
  for _, mode in pairs(solarized_oklab) do
    mode.a.gui = "bold"
  end
end

return solarized_oklab
