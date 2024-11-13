local util = require("solarized-oklab.util")

local function hex2rgb(key, value)
  local hex = value:gsub("#", "")

  local r = tonumber(hex:sub(1, 2), 16)
  local g = tonumber(hex:sub(3, 4), 16)
  local b = tonumber(hex:sub(5, 6), 16)

  return string.format("%s,%s,%s", r, g, b, key, value)
end

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local plasma_colors = {}
  for k, v in pairs(colors) do
    if type(v) == "string" then
      plasma_colors[k] = hex2rgb(k, v)
    end
  end

  return util.template(
[[
ColorEffects:Disabled]
Color=${base03}
ColorAmount=0
ColorEffect=0
ContrastAmount=0.65
ContrastEffect=1
IntensityAmount=0.1
IntensityEffect=2

[ColorEffects:Inactive]
ChangeSelectionColor=true
Color=${base03}
ColorAmount=0.025
ColorEffect=2
ContrastAmount=0.1
ContrastEffect=2
Enable=false
IntensityAmount=0
IntensityEffect=0

[Colors:Button]
BackgroundAlternate=${magenta700}
BackgroundNormal=${base04}
DecorationFocus=${violet}
DecorationHover=${violet}
ForegroundActive=${violet}
ForegroundInactive=${base01}
ForegroundLink=${magenta}
ForegroundNegative=${red}
ForegroundNeutral=${yellow}
ForegroundNormal=${base0}
ForegroundPositive=${green}
ForegroundVisited=${violet}

[Colors:Button][Inactive]
BackgroundAlternate=${magenta700}
BackgroundNormal=${base04}
DecorationFocus=${violet}
DecorationHover=${violet}
ForegroundActive=${violet}
ForegroundInactive=${base01}
ForegroundLink=${magenta}
ForegroundNegative=${red}
ForegroundNeutral=${yellow}
ForegroundNormal=${base0}
ForegroundPositive=${green}
ForegroundVisited=${violet}

[Colors:Complementary]
BackgroundAlternate=${magenta700}
BackgroundNormal=${black}
DecorationFocus=${violet}
DecorationHover=${violet}
ForegroundActive=${violet}
ForegroundInactive=${base01}
ForegroundLink=${magenta}
ForegroundNegative=${red}
ForegroundNeutral=${yellow}
ForegroundNormal=${base0}
ForegroundPositive=${green}
ForegroundVisited=${violet}

[Colors:Complementary][Inactive]
BackgroundAlternate=${magenta700}
BackgroundNormal=${black}
DecorationFocus=${violet}
DecorationHover=${violet}
ForegroundActive=${violet}
ForegroundInactive=${base01}
ForegroundLink=${magenta}
ForegroundNegative=${red}
ForegroundNeutral=${yellow}
ForegroundNormal=${base0}
ForegroundPositive=${green}
ForegroundVisited=${violet}

[Colors:Header]
BackgroundAlternate=${black}
BackgroundNormal=${base04}
DecorationFocus=${violet}
DecorationHover=${violet}
ForegroundActive=${violet}
ForegroundInactive=${base01}
ForegroundLink=${magenta}
ForegroundNegative=${red}
ForegroundNeutral=${yellow}
ForegroundNormal=${base0}
ForegroundPositive=${green}
ForegroundVisited=${violet}

[Colors:Header][Inactive]
BackgroundAlternate=${black}
BackgroundNormal=${base04}
DecorationFocus=${violet}
DecorationHover=${violet}
ForegroundActive=${violet}
ForegroundInactive=${base01}
ForegroundLink=${magenta}
ForegroundNegative=${red}
ForegroundNeutral=${yellow}
ForegroundNormal=${base0}
ForegroundPositive=${green}
ForegroundVisited=${violet}

[Colors:Selection]
BackgroundAlternate=${magenta900}
BackgroundNormal=${blue900}
DecorationFocus=${violet}
DecorationHover=${violet}
ForegroundActive=${base0}
ForegroundInactive=${base01}
ForegroundLink=${orange}
ForegroundNegative=${red}
ForegroundNeutral=${yellow}
ForegroundNormal=${base0}
ForegroundPositive=${green}
ForegroundVisited=${violet}

[Colors:Selection][Inactive]
BackgroundAlternate=${magenta900}
BackgroundNormal=${blue900}
DecorationFocus=${violet}
DecorationHover=${violet}
ForegroundActive=${base0}
ForegroundInactive=${base01}
ForegroundLink=${orange}
ForegroundNegative=${red}
ForegroundNeutral=${yellow}
ForegroundNormal=${base0}
ForegroundPositive=${green}
ForegroundVisited=${violet}

[Colors:Tooltip]
BackgroundAlternate=${black}
BackgroundNormal=${base04}
DecorationFocus=${violet}
DecorationHover=${violet}
ForegroundActive=${violet}
ForegroundInactive=${base01}
ForegroundLink=${magenta}
ForegroundNegative=${red}
ForegroundNeutral=${yellow}
ForegroundNormal=${base0}
ForegroundPositive=${green}
ForegroundVisited=${violet}

[Colors:Tooltip][Inactive]
BackgroundAlternate=${black}
BackgroundNormal=${base04}
DecorationFocus=${violet}
DecorationHover=${violet}
ForegroundActive=${violet}
ForegroundInactive=${base01}
ForegroundLink=${magenta}
ForegroundNegative=${red}
ForegroundNeutral=${yellow}
ForegroundNormal=${base0}
ForegroundPositive=${green}
ForegroundVisited=${violet}

[Colors:View]
BackgroundAlternate=${black}
BackgroundNormal=${black}
DecorationFocus=${violet}
DecorationHover=${violet}
ForegroundActive=${violet}
ForegroundInactive=${base01}
ForegroundLink=${magenta}
ForegroundNegative=${red}
ForegroundNeutral=${yellow}
ForegroundNormal=${base0}
ForegroundPositive=${green}
ForegroundVisited=${violet}

[Colors:View][Inactive]
BackgroundAlternate=${black}
BackgroundNormal=${black}
DecorationFocus=${violet}
DecorationHover=${violet}
ForegroundActive=${violet}
ForegroundInactive=${base01}
ForegroundLink=${magenta}
ForegroundNegative=${red}
ForegroundNeutral=${yellow}
ForegroundNormal=${base0}
ForegroundPositive=${green}
ForegroundVisited=${violet}

[Colors:Window]
BackgroundAlternate=${base04}
BackgroundNormal=${black}
DecorationFocus=${violet}
DecorationHover=${violet}
ForegroundActive=${violet}
ForegroundInactive=${base01}
ForegroundLink=${magenta}
ForegroundNegative=${red}
ForegroundNeutral=${yellow}
ForegroundNormal=${base0}
ForegroundPositive=${green}
ForegroundVisited=${violet}

[Colors:Window][Inactive]
BackgroundAlternate=${base04}
BackgroundNormal=${black}
DecorationFocus=${violet}
DecorationHover=${violet}
ForegroundActive=${violet}
ForegroundInactive=${base01}
ForegroundLink=${magenta}
ForegroundNegative=${red}
ForegroundNeutral=${yellow}
ForegroundNormal=${base0}
ForegroundPositive=${green}
ForegroundVisited=${violet}

[General]
ColorScheme=SolarizedOKLab
Name=Solarized OKLab
shadeSortColumn=true

[KDE]
contrast=4

[WM]
activeBackground=${base04}
activeBlend=${base0}
activeForeground=${base0}
inactiveBackground=${black}
inactiveBlend=${base01}
inactiveForeground=${base01}
]], plasma_colors)
end

return M
