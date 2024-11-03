local colors = {
  base0 = "#a09788",
  base00 = "#57606d",
  base01 = "#3d4551",
  base02 = "#242c37",
  base03 = "#19202b",
  base04 = "#0e151f",
  base1 = "#bfb5a6",
  base2 = "#ded4c5",
  base3 = "#eee4d4",
  base4 = "#fef4e4",
  bg = "#0e151f",
  bg_float = "#0e151f",
  bg_highlight = "#19202b",
  bg_popup = "#0e151f",
  bg_sidebar = "#0e151f",
  bg_statusline = "#19202b",
  black = "#0b1119",
  blue = "#2483d6",
  blue100 = "#94c2f2",
  blue300 = "#5aa3eb",
  blue500 = "#2483d6",
  blue700 = "#1c578d",
  blue900 = "#0d2f4e",
  border = "#0b1119",
  cyan = "#279382",
  cyan100 = "#98c9be",
  cyan300 = "#5eafa0",
  cyan500 = "#279382",
  cyan700 = "#1f6156",
  cyan900 = "#0f352e",
  error = "#de3b3d",
  fg = "#7b7b7b",
  fg_float = "#7b7b7b",
  green = "#6d8d22",
  green100 = "#b2c691",
  green300 = "#8eaa57",
  green500 = "#6d8d22",
  green700 = "#495d1b",
  green900 = "#26320c",
  hint = "#279382",
  info = "#2483d6",
  magenta = "#c841a4",
  magenta100 = "#eda1d3",
  magenta300 = "#e16ebf",
  magenta500 = "#c841a4",
  magenta700 = "#842e6d",
  magenta900 = "#49173b",
  none = "NONE",
  orange = "#c06321",
  orange100 = "#e6af90",
  orange300 = "#d98755",
  orange500 = "#c06321",
  orange700 = "#7f421a",
  orange900 = "#46230c",
  red = "#de3b3d",
  red100 = "#fca199",
  red300 = "#f56c66",
  red500 = "#de3b3d",
  red700 = "#932a2a",
  red900 = "#521515",
  terminal_black = "#3d4551",
  terminal_black_hl = "#a09788",
  terminal_white = "#a09788",
  terminal_white_hl = "#bfb5a6",
  todo = "#8c5ee8",
  violet = "#8c5ee8",
  violet100 = "#c2affd",
  violet300 = "#a785fb",
  violet500 = "#8c5ee8",
  violet700 = "#5c4099",
  violet900 = "#322155",
  warning = "#9e7a21",
  yellow = "#9e7a21",
  yellow100 = "#cfbb91",
  yellow300 = "#b99956",
  yellow500 = "#9e7a21",
  yellow700 = "#68511a",
  yellow900 = "#392b0c"
}

local highlights = {
  ["@annotation"] = {
    link = "PreProc"
  },
  ["@attribute"] = {
    link = "PreProc"
  },
  ["@boolean"] = {
    link = "Boolean"
  },
  ["@character"] = {
    link = "Character"
  },
  ["@character.special"] = {
    link = "SpecialChar"
  },
  ["@comment"] = {
    link = "Comment"
  },
  ["@comment.error"] = {
    fg = "#de3b3d"
  },
  ["@comment.hint"] = {
    fg = "#279382"
  },
  ["@comment.info"] = {
    fg = "#2483d6"
  },
  ["@comment.note"] = {
    fg = "#279382"
  },
  ["@comment.todo"] = {
    fg = "#8c5ee8"
  },
  ["@comment.warning"] = {
    fg = "#9e7a21"
  },
  ["@constant"] = {
    link = "Constant"
  },
  ["@constant.builtin"] = {
    link = "Special"
  },
  ["@constant.macro"] = {
    link = "Define"
  },
  ["@constructor"] = {
    fg = "#c06321"
  },
  ["@constructor.tsx"] = {
    fg = "#2483d6"
  },
  ["@diff.delta"] = {
    link = "DiffChange"
  },
  ["@diff.minus"] = {
    link = "DiffDelete"
  },
  ["@diff.plus"] = {
    link = "DiffAdd"
  },
  ["@function"] = {
    link = "Function"
  },
  ["@function.builtin"] = {
    link = "Special"
  },
  ["@function.call"] = {
    link = "@function"
  },
  ["@function.macro"] = {
    link = "Macro"
  },
  ["@function.method"] = {
    link = "Function"
  },
  ["@function.method.call"] = {
    link = "@function.method"
  },
  ["@keyword"] = {
    fg = "#6d8d22",
    style = {
      italic = true
    }
  },
  ["@keyword.conditional"] = {
    link = "Conditional"
  },
  ["@keyword.coroutine"] = {
    link = "@keyword"
  },
  ["@keyword.debug"] = {
    link = "Debug"
  },
  ["@keyword.directive"] = {
    link = "PreProc"
  },
  ["@keyword.directive.define"] = {
    link = "Define"
  },
  ["@keyword.exception"] = {
    link = "Exception"
  },
  ["@keyword.function"] = {
    fg = "#6d8d22",
    style = {}
  },
  ["@keyword.import"] = {
    link = "Include"
  },
  ["@keyword.javascript"] = {
    fg = "#6d8d22",
    style = "italic"
  },
  ["@keyword.operator"] = {
    link = "@operator"
  },
  ["@keyword.repeat"] = {
    link = "Repeat"
  },
  ["@keyword.return"] = {
    link = "@keyword"
  },
  ["@keyword.return.javascript"] = {
    fg = "#6d8d22",
    style = "italic"
  },
  ["@keyword.return.tsx"] = {
    fg = "#6d8d22",
    style = "italic"
  },
  ["@keyword.storage"] = {
    link = "StorageClass"
  },
  ["@keyword.tsx"] = {
    fg = "#6d8d22",
    style = "italic"
  },
  ["@label"] = {
    fg = "#6d8d22"
  },
  ["@lsp.type.boolean"] = {
    link = "@boolean"
  },
  ["@lsp.type.builtinType"] = {
    link = "@type.builtin"
  },
  ["@lsp.type.comment"] = {
    link = "@comment"
  },
  ["@lsp.type.decorator"] = {
    link = "@attribute"
  },
  ["@lsp.type.deriveHelper"] = {
    link = "@attribute"
  },
  ["@lsp.type.enum"] = {
    link = "@type"
  },
  ["@lsp.type.enumMember"] = {
    link = "@constant"
  },
  ["@lsp.type.escapeSequence"] = {
    link = "@string.escape"
  },
  ["@lsp.type.formatSpecifier"] = {
    link = "@markup.list"
  },
  ["@lsp.type.generic"] = {
    link = "@variable"
  },
  ["@lsp.type.interface"] = {
    fg = "#2483d6"
  },
  ["@lsp.type.keyword"] = {
    link = "@keyword"
  },
  ["@lsp.type.lifetime"] = {
    link = "@keyword.storage"
  },
  ["@lsp.type.namespace"] = {
    link = "@module"
  },
  ["@lsp.type.number"] = {
    link = "@number"
  },
  ["@lsp.type.operator"] = {
    link = "@operator"
  },
  ["@lsp.type.parameter"] = {
    link = "@variable.parameter"
  },
  ["@lsp.type.property"] = {
    link = "@property"
  },
  ["@lsp.type.selfKeyword"] = {
    link = "@variable.builtin"
  },
  ["@lsp.type.selfTypeKeyword"] = {
    link = "@variable.builtin"
  },
  ["@lsp.type.string"] = {
    link = "@string"
  },
  ["@lsp.type.typeAlias"] = {
    link = "@type.definition"
  },
  ["@lsp.type.unresolvedReference"] = {
    sp = "#de3b3d",
    undercurl = true
  },
  ["@lsp.type.variable"] = {},
  ["@lsp.typemod.class.defaultLibrary"] = {
    link = "@type.builtin"
  },
  ["@lsp.typemod.enum.defaultLibrary"] = {
    link = "@type.builtin"
  },
  ["@lsp.typemod.enumMember.defaultLibrary"] = {
    link = "@constant.builtin"
  },
  ["@lsp.typemod.function.defaultLibrary"] = {
    link = "@function.builtin"
  },
  ["@lsp.typemod.keyword.async"] = {
    link = "@keyword.coroutine"
  },
  ["@lsp.typemod.keyword.injected"] = {
    link = "@keyword"
  },
  ["@lsp.typemod.macro.defaultLibrary"] = {
    link = "@function.builtin"
  },
  ["@lsp.typemod.method.defaultLibrary"] = {
    link = "@function.builtin"
  },
  ["@lsp.typemod.operator.injected"] = {
    link = "@operator"
  },
  ["@lsp.typemod.string.injected"] = {
    link = "@string"
  },
  ["@lsp.typemod.struct.defaultLibrary"] = {
    link = "@type.builtin"
  },
  ["@lsp.typemod.type.defaultLibrary"] = {
    fg = "#2483d6"
  },
  ["@lsp.typemod.typeAlias.defaultLibrary"] = {
    fg = "#2483d6"
  },
  ["@lsp.typemod.variable.callable"] = {
    link = "@function"
  },
  ["@lsp.typemod.variable.defaultLibrary"] = {
    link = "@variable.builtin"
  },
  ["@lsp.typemod.variable.injected"] = {
    link = "@variable"
  },
  ["@lsp.typemod.variable.static"] = {
    link = "@constant"
  },
  ["@markup"] = {
    link = "@none"
  },
  ["@markup.environment"] = {
    link = "Macro"
  },
  ["@markup.environment.name"] = {
    link = "Type"
  },
  ["@markup.heading"] = {
    link = "Title"
  },
  ["@markup.italic"] = {
    italic = true
  },
  ["@markup.link"] = {
    fg = "#2483d6",
    underline = true
  },
  ["@markup.link.label"] = {
    link = "SpecialChar"
  },
  ["@markup.link.label.symbol"] = {
    link = "Identifier"
  },
  ["@markup.link.url"] = {
    link = "Underlined"
  },
  ["@markup.list"] = {
    fg = "#2483d6"
  },
  ["@markup.list.checked"] = {
    fg = "#6d8d22"
  },
  ["@markup.list.markdown"] = {
    bold = true,
    fg = "#c06321"
  },
  ["@markup.list.unchecked"] = {
    fg = "#9e7a21"
  },
  ["@markup.math"] = {
    link = "Special"
  },
  ["@markup.raw"] = {
    link = "String"
  },
  ["@markup.raw.markdown_inline"] = {
    bg = "#26320c",
    fg = "#9e7a21"
  },
  ["@markup.strikethrough"] = {
    strikethrough = true
  },
  ["@markup.strong"] = {
    bold = true
  },
  ["@markup.underline"] = {
    underline = true
  },
  ["@module"] = {
    link = "Include"
  },
  ["@module.builtin"] = {
    fg = "#c06321"
  },
  ["@namespace.builtin"] = {
    link = "@variable.builtin"
  },
  ["@none"] = {},
  ["@number"] = {
    link = "Number"
  },
  ["@number.float"] = {
    link = "Float"
  },
  ["@operator"] = {
    fg = "#6d8d22"
  },
  ["@property"] = {
    link = "Identifier"
  },
  ["@punctuation.bracket"] = {
    fg = "#c06321"
  },
  ["@punctuation.delimiter"] = {
    fg = "#6d8d22"
  },
  ["@punctuation.special"] = {
    fg = "#c06321"
  },
  ["@punctuation.special.markdown"] = {
    bold = true,
    fg = "#c06321"
  },
  ["@string"] = {
    link = "String"
  },
  ["@string.documentation"] = {
    fg = "#279382"
  },
  ["@string.escape"] = {
    fg = "#7f421a"
  },
  ["@string.regexp"] = {
    fg = "#5eafa0"
  },
  ["@tag"] = {
    link = "Label"
  },
  ["@tag.attribute"] = {
    link = "@property"
  },
  ["@tag.delimiter"] = {
    link = "Delimiter"
  },
  ["@tag.delimiter.html"] = {
    fg = "#c06321"
  },
  ["@tag.delimiter.javascript"] = {
    fg = "#c06321"
  },
  ["@tag.delimiter.tsx"] = {
    fg = "#c06321"
  },
  ["@tag.delimiter.vue"] = {
    fg = "#c06321"
  },
  ["@tag.javascript"] = {
    fg = "#9e7a21"
  },
  ["@tag.tsx"] = {
    fg = "#9e7a21"
  },
  ["@type"] = {
    link = "Type"
  },
  ["@type.builtin"] = {
    link = "Type"
  },
  ["@type.definition"] = {
    link = "Typedef"
  },
  ["@type.qualifier"] = {
    link = "@keyword"
  },
  ["@variable"] = {
    fg = "#a09788",
    style = {}
  },
  ["@variable.builtin"] = {
    fg = "#c06321"
  },
  ["@variable.javascript"] = {
    fg = "#9e7a21"
  },
  ["@variable.member"] = {
    fg = "#279382"
  },
  ["@variable.parameter"] = {
    fg = "#c06321"
  },
  ["@variable.parameter.builtin"] = {
    fg = "#b99956"
  },
  ["@variable.typescript"] = {
    fg = "#9e7a21"
  },
  AlphaButtons = {
    fg = "#279382"
  },
  AlphaFooter = {
    fg = "#279382"
  },
  AlphaHeader = {
    fg = "#2483d6"
  },
  AlphaHeaderLabel = {
    fg = "#c06321"
  },
  AlphaShortcut = {
    fg = "#c06321"
  },
  Bold = {
    bold = true
  },
  BufferAlternate = {
    bg = "#3d4551",
    fg = "#7b7b7b"
  },
  BufferAlternateERROR = {
    bg = "#3d4551",
    fg = "#de3b3d"
  },
  BufferAlternateHINT = {
    bg = "#3d4551",
    fg = "#279382"
  },
  BufferAlternateINFO = {
    bg = "#3d4551",
    fg = "#2483d6"
  },
  BufferAlternateIndex = {
    bg = "#3d4551",
    fg = "#2483d6"
  },
  BufferAlternateMod = {
    bg = "#3d4551",
    fg = "#9e7a21"
  },
  BufferAlternateSign = {
    bg = "#3d4551",
    fg = "#2483d6"
  },
  BufferAlternateTarget = {
    bg = "#3d4551",
    fg = "#de3b3d"
  },
  BufferAlternateWARN = {
    bg = "#3d4551",
    fg = "#9e7a21"
  },
  BufferCurrent = {
    bg = "#0e151f",
    fg = "#7b7b7b"
  },
  BufferCurrentERROR = {
    bg = "#0e151f",
    fg = "#de3b3d"
  },
  BufferCurrentHINT = {
    bg = "#0e151f",
    fg = "#279382"
  },
  BufferCurrentINFO = {
    bg = "#0e151f",
    fg = "#2483d6"
  },
  BufferCurrentIndex = {
    bg = "#0e151f",
    fg = "#2483d6"
  },
  BufferCurrentMod = {
    bg = "#0e151f",
    fg = "#9e7a21"
  },
  BufferCurrentSign = {
    bg = "#0e151f",
    fg = "#0e151f"
  },
  BufferCurrentTarget = {
    bg = "#0e151f",
    fg = "#de3b3d"
  },
  BufferCurrentWARN = {
    bg = "#0e151f",
    fg = "#9e7a21"
  },
  BufferInactive = {
    bg = "#121924",
    fg = "#734fc0"
  },
  BufferInactiveERROR = {
    bg = "#121924",
    fg = "#b43337"
  },
  BufferInactiveHINT = {
    bg = "#121924",
    fg = "#227a6e"
  },
  BufferInactiveINFO = {
    bg = "#121924",
    fg = "#206db1"
  },
  BufferInactiveIndex = {
    bg = "#121924",
    fg = "#8c5ee8"
  },
  BufferInactiveMod = {
    bg = "#121924",
    fg = "#816621"
  },
  BufferInactiveSign = {
    bg = "#121924",
    fg = "#0e151f"
  },
  BufferInactiveTarget = {
    bg = "#121924",
    fg = "#de3b3d"
  },
  BufferInactiveWARN = {
    bg = "#121924",
    fg = "#816621"
  },
  BufferLineIndicatorSelected = {
    fg = "#9e7a21"
  },
  BufferOffset = {
    bg = "#19202b",
    fg = "#8c5ee8"
  },
  BufferTabpageFill = {
    bg = "#171e29",
    fg = "#8c5ee8"
  },
  BufferTabpages = {
    bg = "#19202b",
    fg = "NONE"
  },
  BufferVisible = {
    bg = "#19202b",
    fg = "#7b7b7b"
  },
  BufferVisibleERROR = {
    bg = "#19202b",
    fg = "#de3b3d"
  },
  BufferVisibleHINT = {
    bg = "#19202b",
    fg = "#279382"
  },
  BufferVisibleINFO = {
    bg = "#19202b",
    fg = "#2483d6"
  },
  BufferVisibleIndex = {
    bg = "#19202b",
    fg = "#2483d6"
  },
  BufferVisibleMod = {
    bg = "#19202b",
    fg = "#9e7a21"
  },
  BufferVisibleSign = {
    bg = "#19202b",
    fg = "#2483d6"
  },
  BufferVisibleTarget = {
    bg = "#19202b",
    fg = "#de3b3d"
  },
  BufferVisibleWARN = {
    bg = "#19202b",
    fg = "#9e7a21"
  },
  Character = {
    link = "Constant"
  },
  CmpDocumentation = {
    bg = "#0e151f",
    fg = "#7b7b7b"
  },
  CmpDocumentationBorder = {
    bg = "#0e151f",
    fg = "#242c37"
  },
  CmpGhostText = {
    fg = "#3d4551"
  },
  CmpItemAbbr = {
    bg = "NONE",
    fg = "#7b7b7b"
  },
  CmpItemAbbrDeprecated = {
    bg = "NONE",
    fg = "#3d4551",
    strikethrough = true
  },
  CmpItemAbbrMatch = {
    bg = "NONE",
    fg = "#8c5ee8"
  },
  CmpItemAbbrMatchFuzzy = {
    bg = "NONE",
    fg = "#8c5ee8"
  },
  CmpItemKindClass = {
    bg = "NONE",
    fg = "#c06321"
  },
  CmpItemKindCodeium = {
    bg = "NONE",
    fg = "#279382"
  },
  CmpItemKindConstant = {
    bg = "NONE",
    fg = "#c841a4"
  },
  CmpItemKindConstructor = {
    bg = "NONE",
    fg = "#2483d6"
  },
  CmpItemKindCopilot = {
    bg = "NONE",
    fg = "#279382"
  },
  CmpItemKindDefault = {
    bg = "NONE",
    fg = "#3d4551"
  },
  CmpItemKindEnum = {
    bg = "NONE",
    fg = "#c06321"
  },
  CmpItemKindEnumMember = {
    bg = "NONE",
    fg = "#279382"
  },
  CmpItemKindEvent = {
    bg = "NONE",
    fg = "#c06321"
  },
  CmpItemKindField = {
    bg = "NONE",
    fg = "#279382"
  },
  CmpItemKindFunction = {
    bg = "NONE",
    fg = "#2483d6"
  },
  CmpItemKindInterface = {
    bg = "NONE",
    fg = "#c06321"
  },
  CmpItemKindKeyword = {
    bg = "NONE",
    fg = "#279382"
  },
  CmpItemKindMethod = {
    bg = "NONE",
    fg = "#2483d6"
  },
  CmpItemKindModule = {
    bg = "NONE",
    fg = "#9e7a21"
  },
  CmpItemKindOperator = {
    bg = "NONE",
    fg = "#279382"
  },
  CmpItemKindProperty = {
    bg = "NONE",
    fg = "#279382"
  },
  CmpItemKindReference = {
    bg = "NONE",
    fg = "#c841a4"
  },
  CmpItemKindSnippet = {
    bg = "NONE",
    fg = "#8c5ee8"
  },
  CmpItemKindStruct = {
    bg = "NONE",
    fg = "#c06321"
  },
  CmpItemKindTabNine = {
    bg = "NONE",
    fg = "#279382"
  },
  CmpItemKindTypeParameter = {
    bg = "NONE",
    fg = "#279382"
  },
  CmpItemKindUnit = {
    bg = "NONE",
    fg = "#c06321"
  },
  CmpItemKindValue = {
    bg = "NONE",
    fg = "#c841a4"
  },
  CmpItemKindVariable = {
    bg = "NONE",
    fg = "#c841a4"
  },
  CmpItemMenu = {
    bg = "NONE",
    fg = "#3d4551"
  },
  ColorColumn = {
    bg = "#242c37"
  },
  Comment = {
    fg = "#3d4551",
    style = {
      italic = true
    }
  },
  Conceal = {
    fg = "#2483d6"
  },
  Constant = {
    fg = "#279382"
  },
  CurSearch = {
    link = "IncSearch"
  },
  Cursor = {
    bg = "#a09788",
    fg = "#19202b"
  },
  CursorColumn = {
    bg = "#242c37"
  },
  CursorIM = {
    bg = "#a09788",
    fg = "#19202b"
  },
  CursorLine = {
    bg = "#19202b",
    sp = "#bfb5a6"
  },
  CursorLineNr = {
    fg = "#c06321",
    sp = "#bfb5a6"
  },
  DapStoppedLine = {
    bg = "#68511a"
  },
  DashboardCenter = {
    fg = "#c841a4"
  },
  DashboardDesc = {
    fg = "#279382"
  },
  DashboardFooter = {
    fg = "#9e7a21",
    italic = true
  },
  DashboardHeader = {
    fg = "#2483d6"
  },
  DashboardIcon = {
    bold = true,
    fg = "#279382"
  },
  DashboardKey = {
    fg = "#c06321"
  },
  DashboardShortCut = {
    fg = "#279382"
  },
  Debug = {
    fg = "#c06321"
  },
  DefinitionCount = {
    fg = "#8c5ee8"
  },
  DefinitionIcon = {
    fg = "#2483d6"
  },
  DiagnosticError = {
    fg = "#de3b3d"
  },
  DiagnosticHint = {
    fg = "#279382"
  },
  DiagnosticInfo = {
    fg = "#2483d6"
  },
  DiagnosticInformation = {
    link = "DiagnosticInfo"
  },
  DiagnosticUnderlineError = {
    sp = "#de3b3d",
    undercurl = true
  },
  DiagnosticUnderlineHint = {
    sp = "#279382",
    undercurl = true
  },
  DiagnosticUnderlineInfo = {
    sp = "#2483d6",
    undercurl = true
  },
  DiagnosticUnderlineWarn = {
    sp = "#9e7a21",
    undercurl = true
  },
  DiagnosticUnnecessary = {
    fg = "#57606d"
  },
  DiagnosticVirtualTextError = {
    bg = "#521515",
    fg = "#de3b3d"
  },
  DiagnosticVirtualTextHint = {
    bg = "#0f352e",
    fg = "#279382"
  },
  DiagnosticVirtualTextInfo = {
    bg = "#0d2f4e",
    fg = "#2483d6"
  },
  DiagnosticVirtualTextWarn = {
    bg = "#392b0c",
    fg = "#9e7a21"
  },
  DiagnosticWarn = {
    fg = "#9e7a21"
  },
  DiagnosticWarning = {
    link = "DiagnosticWarn"
  },
  DiffAdd = {
    bg = "#242c37",
    bold = true,
    fg = "#6d8d22"
  },
  DiffChange = {
    bg = "#242c37",
    bold = true,
    fg = "#9e7a21"
  },
  DiffDelete = {
    bg = "#242c37",
    bold = true,
    fg = "#de3b3d"
  },
  DiffText = {
    bg = "#242c37",
    bold = true,
    fg = "#2483d6"
  },
  Directory = {
    fg = "#2483d6"
  },
  EndOfBuffer = {
    fg = "#3d4551"
  },
  Error = {
    fg = "#de3b3d"
  },
  ErrorMsg = {
    fg = "#de3b3d",
    reverse = true
  },
  FernBranchText = {
    fg = "#2483d6"
  },
  FlashBackdrop = {
    fg = "#3d4551"
  },
  FlashLabel = {
    bg = "#c841a4",
    bold = true,
    fg = "#0e151f"
  },
  FloatBorder = {
    bg = "#0e151f",
    fg = "#68511a"
  },
  FloatTitle = {
    bg = "#0e151f",
    fg = "#ded4c5"
  },
  FoldColumn = {
    fg = "#a09788"
  },
  Folded = {
    bg = "#242c37",
    bold = true,
    fg = "#a09788"
  },
  Function = {
    fg = "#2483d6",
    style = {}
  },
  GitGutterAdd = {
    fg = "#6d8d22"
  },
  GitGutterAddLineNr = {
    fg = "#6d8d22"
  },
  GitGutterChange = {
    fg = "#9e7a21"
  },
  GitGutterChangeLineNr = {
    fg = "#9e7a21"
  },
  GitGutterDelete = {
    fg = "#de3b3d"
  },
  GitGutterDeleteLineNr = {
    fg = "#de3b3d"
  },
  GitSignsAdd = {
    fg = "#6d8d22"
  },
  GitSignsChange = {
    fg = "#9e7a21"
  },
  GitSignsDelete = {
    fg = "#de3b3d"
  },
  GlyphPalette1 = {
    fg = "#de3b3d"
  },
  GlyphPalette2 = {
    fg = "#6d8d22"
  },
  GlyphPalette3 = {
    fg = "#9e7a21"
  },
  GlyphPalette4 = {
    fg = "#2483d6"
  },
  GlyphPalette6 = {
    fg = "#279382"
  },
  GlyphPalette7 = {
    fg = "#7b7b7b"
  },
  GlyphPalette9 = {
    fg = "#de3b3d"
  },
  Hlargs = {
    fg = "#9e7a21"
  },
  HopNextKey = {
    bold = true,
    fg = "#c841a4"
  },
  HopNextKey1 = {
    bold = true,
    fg = "#8c5ee8"
  },
  HopNextKey2 = {
    fg = "#5c4099"
  },
  HopUnmatched = {
    fg = "#3d4551"
  },
  IblIndent = {
    fg = "#19202b",
    nocombine = true
  },
  Identifier = {
    fg = "#2483d6",
    style = {}
  },
  IlluminatedWordRead = {
    bg = "#49173b"
  },
  IlluminatedWordText = {
    bg = "#322155"
  },
  IlluminatedWordWrite = {
    bg = "#49173b"
  },
  IncSearch = {
    fg = "#c06321",
    standout = true
  },
  IndentBlanklineChar = {
    fg = "#19202b",
    nocombine = true
  },
  IndentBlanklineContextChar = {
    fg = "#c06321",
    nocombine = true
  },
  Italic = {
    italic = true
  },
  Keyword = {
    fg = "#6d8d22",
    style = {
      italic = true
    }
  },
  LazyProgressDone = {
    bold = true,
    fg = "#c841a4"
  },
  LazyProgressTodo = {
    bold = true,
    fg = "#3d4551"
  },
  LeapBackdrop = {
    fg = "#3d4551"
  },
  LeapLabelPrimary = {
    bold = true,
    fg = "#c841a4"
  },
  LeapLabelSecondary = {
    bold = true,
    fg = "#279382"
  },
  LeapMatch = {
    bg = "#c841a4",
    bold = true,
    fg = "#7b7b7b"
  },
  LightspeedGreyWash = {
    fg = "#3d4551"
  },
  LightspeedLabel = {
    bold = true,
    fg = "#c841a4",
    underline = true
  },
  LightspeedLabelDistant = {
    bold = true,
    fg = "#279382",
    underline = true
  },
  LightspeedLabelDistantOverlapped = {
    fg = "#279382",
    underline = true
  },
  LightspeedLabelOverlapped = {
    fg = "#c841a4",
    underline = true
  },
  LightspeedMaskedChar = {
    fg = "#c06321"
  },
  LightspeedOneCharMatch = {
    bg = "#c841a4",
    bold = true,
    fg = "#7b7b7b"
  },
  LightspeedPendingOpArea = {
    bg = "#c841a4",
    fg = "#7b7b7b"
  },
  LightspeedShortcut = {
    bg = "#c841a4",
    bold = true,
    fg = "#7b7b7b",
    underline = true
  },
  LightspeedUnlabeledMatch = {
    bold = true,
    fg = "#8c5ee8"
  },
  LineNr = {
    bg = "NONE",
    fg = "#68511a"
  },
  LspCodeLens = {
    fg = "#3d4551"
  },
  LspFloatWinBorder = {
    fg = "#242c37"
  },
  LspFloatWinNormal = {
    bg = "#0e151f"
  },
  LspInfoBorder = {
    bg = "#0e151f",
    fg = "#242c37"
  },
  LspInlayHint = {
    bg = "#322155",
    fg = "#8c5ee8"
  },
  LspReferenceRead = {
    bg = "#49173b"
  },
  LspReferenceText = {
    bg = "#49173b"
  },
  LspReferenceWrite = {
    bg = "#49173b"
  },
  LspSagaBorderTitle = {
    fg = "#279382"
  },
  LspSagaCodeActionBorder = {
    fg = "#2483d6"
  },
  LspSagaCodeActionContent = {
    fg = "#8c5ee8"
  },
  LspSagaCodeActionTitle = {
    fg = "#279382"
  },
  LspSagaDefPreviewBorder = {
    fg = "#6d8d22"
  },
  LspSagaFinderSelection = {
    fg = "#19202b"
  },
  LspSagaHoverBorder = {
    fg = "#2483d6"
  },
  LspSagaRenameBorder = {
    fg = "#6d8d22"
  },
  LspSagaSignatureHelpBorder = {
    fg = "#de3b3d"
  },
  LspSignatureActiveParameter = {
    bg = "#19202b",
    bold = true
  },
  MatchParen = {
    bg = "#c06321",
    bold = true,
    fg = "#0b1119"
  },
  MiniAnimateCursor = {
    nocombine = true,
    reverse = true
  },
  MiniAnimateNormalFloat = {
    link = "NormalFloat"
  },
  MiniClueBorder = {
    link = "FloatBorder"
  },
  MiniClueDescGroup = {
    link = "DiagnosticFloatingWarn"
  },
  MiniClueDescSingle = {
    link = "NormalFloat"
  },
  MiniClueNextKey = {
    link = "DiagnosticFloatingHint"
  },
  MiniClueNextKeyWithPostkeys = {
    link = "DiagnosticFloatingError"
  },
  MiniClueSeparator = {
    link = "DiagnosticFloatingInfo"
  },
  MiniClueTitle = {
    link = "FloatTitle"
  },
  MiniCompletionActiveParameter = {
    link = "LspSignatureActiveParameter"
  },
  MiniCursorword = {
    underline = true
  },
  MiniCursorwordCurrent = {
    underline = true
  },
  MiniDepsChangeAdded = {
    link = "diffAdded"
  },
  MiniDepsChangeRemoved = {
    link = "diffRemoved"
  },
  MiniDepsHint = {
    link = "DiagnosticHint"
  },
  MiniDepsInfo = {
    link = "DiagnosticInfo"
  },
  MiniDepsMsgBreaking = {
    link = "DiagnosticWarn"
  },
  MiniDepsPlaceholder = {
    link = "Comment"
  },
  MiniDepsTitle = {
    link = "Title"
  },
  MiniDepsTitleError = {
    link = "DiffDelete"
  },
  MiniDepsTitleSame = {
    link = "DiffText"
  },
  MiniDepsTitleUpdate = {
    link = "DiffAdd"
  },
  MiniDiffOverAdd = {
    link = "DiffAdd"
  },
  MiniDiffOverChange = {
    link = "DiffText"
  },
  MiniDiffOverContext = {
    link = "DiffChange"
  },
  MiniDiffOverDelete = {
    link = "DiffDelete"
  },
  MiniDiffSignAdd = {
    fg = "#6d8d22"
  },
  MiniDiffSignChange = {
    fg = "#9e7a21"
  },
  MiniDiffSignDelete = {
    fg = "#de3b3d"
  },
  MiniFilesBorder = {
    link = "FloatBorder"
  },
  MiniFilesBorderModified = {
    link = "DiagnosticFloatingWarn"
  },
  MiniFilesCursorLine = {
    link = "CursorLine"
  },
  MiniFilesDirectory = {
    link = "Directory"
  },
  MiniFilesFile = {
    fg = "#7b7b7b"
  },
  MiniFilesNormal = {
    link = "NormalFloat"
  },
  MiniFilesTitle = {
    link = "FloatTitle"
  },
  MiniFilesTitleFocused = {
    bg = "#0e151f",
    fg = "#279382"
  },
  MiniHipatternsFixme = {
    bg = "#de3b3d",
    bold = true,
    fg = "#0e151f"
  },
  MiniHipatternsHack = {
    bg = "#9e7a21",
    bold = true,
    fg = "#0e151f"
  },
  MiniHipatternsNote = {
    bg = "#2483d6",
    bold = true,
    fg = "#0e151f"
  },
  MiniHipatternsTodo = {
    bg = "#279382",
    bold = true,
    fg = "#0e151f"
  },
  MiniIconsAzure = {
    fg = "#5aa3eb"
  },
  MiniIconsBlue = {
    fg = "#2483d6"
  },
  MiniIconsCyan = {
    fg = "#279382"
  },
  MiniIconsGreen = {
    fg = "#6d8d22"
  },
  MiniIconsGrey = {
    fg = "#ded4c5"
  },
  MiniIconsOrange = {
    fg = "#c06321"
  },
  MiniIconsPurple = {
    fg = "#8c5ee8"
  },
  MiniIconsRed = {
    fg = "#de3b3d"
  },
  MiniIconsYellow = {
    fg = "#9e7a21"
  },
  MiniIndentscopeSymbol = {
    fg = "#5c4099",
    nocombine = true
  },
  MiniIndentscopeSymbolOff = {
    fg = "#9e7a21",
    nocombine = true
  },
  MiniJump = {
    bg = "#c841a4",
    fg = "#fef4e4"
  },
  MiniJump2dDim = {
    fg = "#3d4551"
  },
  MiniJump2dSpot = {
    bold = true,
    fg = "#c841a4",
    nocombine = true
  },
  MiniJump2dSpotAhead = {
    bg = "#0b1119",
    fg = "#279382",
    nocombine = true
  },
  MiniJump2dSpotUnique = {
    bold = true,
    fg = "#9e7a21",
    nocombine = true
  },
  MiniMapNormal = {
    link = "NormalFloat"
  },
  MiniMapSymbolCount = {
    link = "Special"
  },
  MiniMapSymbolLine = {
    link = "Title"
  },
  MiniMapSymbolView = {
    link = "Delimiter"
  },
  MiniNotifyBorder = {
    link = "FloatBorder"
  },
  MiniNotifyNormal = {
    link = "NormalFloat"
  },
  MiniNotifyTitle = {
    link = "FloatTitle"
  },
  MiniOperatorsExchangeFrom = {
    link = "IncSearch"
  },
  MiniPickBorder = {
    link = "FloatBorder"
  },
  MiniPickBorderBusy = {
    link = "DiagnosticFloatingWarn"
  },
  MiniPickBorderText = {
    link = "FloatTitle"
  },
  MiniPickHeader = {
    link = "DiagnosticFloatingHint"
  },
  MiniPickIconDirectory = {
    link = "Directory"
  },
  MiniPickIconFile = {
    link = "MiniPickNormal"
  },
  MiniPickMatchCurrent = {
    link = "CursorLine"
  },
  MiniPickMatchMarked = {
    link = "Visual"
  },
  MiniPickMatchRanges = {
    link = "DiagnosticFloatingHint"
  },
  MiniPickNormal = {
    link = "NormalFloat"
  },
  MiniPickPreviewLine = {
    link = "CursorLine"
  },
  MiniPickPreviewRegion = {
    link = "IncSearch"
  },
  MiniPickPrompt = {
    link = "DiagnosticFloatingInfo"
  },
  MiniStarterCurrent = {
    nocombine = true
  },
  MiniStarterFooter = {
    fg = "#9e7a21",
    italic = true
  },
  MiniStarterHeader = {
    fg = "#2483d6"
  },
  MiniStarterInactive = {
    fg = "#3d4551",
    style = {
      italic = true
    }
  },
  MiniStarterItem = {
    bg = "NONE",
    fg = "#7b7b7b"
  },
  MiniStarterItemBullet = {
    fg = "#3d4551"
  },
  MiniStarterItemPrefix = {
    fg = "#9e7a21"
  },
  MiniStarterQuery = {
    fg = "#2483d6"
  },
  MiniStarterSection = {
    fg = "#8c5ee8"
  },
  MiniStatuslineDevinfo = {
    bg = "#19202b",
    fg = "#3d4551"
  },
  MiniStatuslineFileinfo = {
    bg = "#19202b",
    fg = "#3d4551"
  },
  MiniStatuslineFilename = {
    bg = "#19202b",
    fg = "#3d4551"
  },
  MiniStatuslineInactive = {
    bg = "#19202b",
    fg = "#2483d6"
  },
  MiniStatuslineModeCommand = {
    bg = "#9e7a21",
    bold = true,
    fg = "#0b1119"
  },
  MiniStatuslineModeInsert = {
    bg = "#6d8d22",
    bold = true,
    fg = "#0b1119"
  },
  MiniStatuslineModeNormal = {
    bg = "#2483d6",
    bold = true,
    fg = "#0b1119"
  },
  MiniStatuslineModeOther = {
    bg = "#279382",
    bold = true,
    fg = "#0b1119"
  },
  MiniStatuslineModeReplace = {
    bg = "#de3b3d",
    bold = true,
    fg = "#0b1119"
  },
  MiniStatuslineModeVisual = {
    bg = "#c841a4",
    bold = true,
    fg = "#0b1119"
  },
  MiniSurround = {
    bg = "#c06321",
    fg = "#0b1119"
  },
  MiniTablineCurrent = {
    bg = "#242c37",
    bold = true,
    fg = "#7b7b7b"
  },
  MiniTablineFill = {
    bg = "#0b1119"
  },
  MiniTablineHidden = {
    bg = "#19202b",
    fg = "#8c5ee8"
  },
  MiniTablineModifiedCurrent = {
    bg = "#7b7b7b",
    bold = true,
    fg = "#242c37"
  },
  MiniTablineModifiedHidden = {
    bg = "#8c5ee8",
    fg = "#19202b"
  },
  MiniTablineModifiedVisible = {
    bg = "#7b7b7b",
    fg = "#19202b"
  },
  MiniTablineTabpagesection = {
    bg = "#19202b",
    fg = "NONE"
  },
  MiniTablineVisible = {
    bg = "#19202b",
    fg = "#7b7b7b"
  },
  MiniTestEmphasis = {
    bold = true
  },
  MiniTestFail = {
    bold = true,
    fg = "#de3b3d"
  },
  MiniTestPass = {
    bold = true,
    fg = "#6d8d22"
  },
  MiniTrailspace = {
    bg = "#de3b3d"
  },
  ModeMsg = {
    fg = "#2483d6"
  },
  MoreMsg = {
    fg = "#2483d6"
  },
  MsgArea = {
    fg = "#57606d"
  },
  NavicIconsArray = {
    bg = "#19202b",
    fg = "#c06321"
  },
  NavicIconsBoolean = {
    bg = "#19202b",
    fg = "#c06321"
  },
  NavicIconsClass = {
    bg = "#19202b",
    fg = "#c06321"
  },
  NavicIconsConstant = {
    bg = "#19202b",
    fg = "#c841a4"
  },
  NavicIconsConstructor = {
    bg = "#19202b",
    fg = "#c06321"
  },
  NavicIconsEnum = {
    bg = "#19202b",
    fg = "#c06321"
  },
  NavicIconsEnumMember = {
    bg = "#19202b",
    fg = "#279382"
  },
  NavicIconsEvent = {
    bg = "#19202b",
    fg = "#c06321"
  },
  NavicIconsField = {
    bg = "#19202b",
    fg = "#279382"
  },
  NavicIconsFile = {
    bg = "#19202b",
    fg = "#7b7b7b"
  },
  NavicIconsFunction = {
    bg = "#19202b",
    fg = "#2483d6"
  },
  NavicIconsInterface = {
    bg = "#19202b",
    fg = "#c06321"
  },
  NavicIconsKey = {
    bg = "#19202b",
    fg = "#8c5ee8"
  },
  NavicIconsKeyword = {
    bg = "#19202b",
    fg = "#8c5ee8"
  },
  NavicIconsMethod = {
    bg = "#19202b",
    fg = "#2483d6"
  },
  NavicIconsModule = {
    bg = "#19202b",
    fg = "#9e7a21"
  },
  NavicIconsNamespace = {
    bg = "#19202b",
    fg = "#7b7b7b"
  },
  NavicIconsNull = {
    bg = "#19202b",
    fg = "#c06321"
  },
  NavicIconsNumber = {
    bg = "#19202b",
    fg = "#c06321"
  },
  NavicIconsObject = {
    bg = "#19202b",
    fg = "#c06321"
  },
  NavicIconsOperator = {
    bg = "#19202b",
    fg = "#7b7b7b"
  },
  NavicIconsPackage = {
    bg = "#19202b",
    fg = "#7b7b7b"
  },
  NavicIconsProperty = {
    bg = "#19202b",
    fg = "#279382"
  },
  NavicIconsString = {
    bg = "#19202b",
    fg = "#6d8d22"
  },
  NavicIconsStruct = {
    bg = "#19202b",
    fg = "#c06321"
  },
  NavicIconsTypeParameter = {
    bg = "#19202b",
    fg = "#279382"
  },
  NavicIconsVariable = {
    bg = "#19202b",
    fg = "#c841a4"
  },
  NavicSeparator = {
    bg = "#19202b",
    fg = "#7b7b7b"
  },
  NavicText = {
    bg = "#19202b",
    fg = "#7b7b7b"
  },
  NeoTreeDimText = {
    fg = "#3d4551"
  },
  NeoTreeNormal = {
    bg = "#0e151f",
    fg = "#57606d"
  },
  NeoTreeNormalNC = {
    bg = "#0e151f",
    fg = "#57606d"
  },
  NeogitBranch = {
    fg = "#c841a4"
  },
  NeogitDiffAddHighlight = {
    bg = "#26320c",
    fg = "#6d8d22"
  },
  NeogitDiffContextHighlight = {
    bg = "#242c37",
    fg = "#57606d"
  },
  NeogitDiffDeleteHighlight = {
    bg = "#521515",
    fg = "#de3b3d"
  },
  NeogitHunkHeader = {
    bg = "#242c37",
    fg = "#a09788"
  },
  NeogitHunkHeaderHighlight = {
    bg = "#242c37",
    fg = "#2483d6"
  },
  NeogitRemote = {
    fg = "#8c5ee8"
  },
  NeotestAdapterName = {
    bold = true,
    fg = "#8c5ee8"
  },
  NeotestBorder = {
    fg = "#2483d6"
  },
  NeotestDir = {
    fg = "#2483d6"
  },
  NeotestExpandMarker = {
    fg = "#a09788"
  },
  NeotestFailed = {
    fg = "#de3b3d"
  },
  NeotestFile = {
    fg = "#279382"
  },
  NeotestFocused = {
    fg = "#9e7a21"
  },
  NeotestIndent = {
    fg = "#57606d"
  },
  NeotestMarked = {
    fg = "#2483d6"
  },
  NeotestNamespace = {
    fg = "#279382"
  },
  NeotestPassed = {
    fg = "#6d8d22"
  },
  NeotestRunning = {
    fg = "#9e7a21"
  },
  NeotestSkipped = {
    fg = "#2483d6"
  },
  NeotestTarget = {
    fg = "#2483d6"
  },
  NeotestTest = {
    fg = "#57606d"
  },
  NeotestWinSelect = {
    fg = "#2483d6"
  },
  NoiceCompletionItemKindDefault = {
    bg = "NONE",
    fg = "#3d4551"
  },
  NonText = {
    bold = true,
    fg = "#57606d"
  },
  Normal = {
    bg = "NONE",
    fg = "#a09788"
  },
  NormalFloat = {
    bg = "#0e151f",
    fg = "#a09788"
  },
  NormalNC = {
    bg = "NONE",
    fg = "#57606d"
  },
  NormalSB = {
    bg = "#0e151f",
    fg = "#3d4551"
  },
  NotifyBackground = {
    bg = "#0e151f",
    fg = "#7b7b7b"
  },
  NotifyDEBUGBody = {
    bg = "NONE",
    fg = "#7b7b7b"
  },
  NotifyDEBUGBorder = {
    bg = "NONE",
    fg = "#1c232e"
  },
  NotifyDEBUGIcon = {
    fg = "#3d4551"
  },
  NotifyDEBUGTitle = {
    fg = "#3d4551"
  },
  NotifyERRORBody = {
    bg = "NONE",
    fg = "#7b7b7b"
  },
  NotifyERRORBorder = {
    bg = "NONE",
    fg = "#4c2028"
  },
  NotifyERRORIcon = {
    fg = "#de3b3d"
  },
  NotifyERRORTitle = {
    fg = "#de3b3d"
  },
  NotifyINFOBody = {
    bg = "NONE",
    fg = "#7b7b7b"
  },
  NotifyINFOBorder = {
    bg = "NONE",
    fg = "#153656"
  },
  NotifyINFOIcon = {
    fg = "#2483d6"
  },
  NotifyINFOTitle = {
    fg = "#2483d6"
  },
  NotifyTRACEBody = {
    bg = "NONE",
    fg = "#7b7b7b"
  },
  NotifyTRACEBorder = {
    bg = "NONE",
    fg = "#342b5b"
  },
  NotifyTRACEIcon = {
    fg = "#8c5ee8"
  },
  NotifyTRACETitle = {
    fg = "#8c5ee8"
  },
  NotifyWARNBody = {
    bg = "NONE",
    fg = "#7b7b7b"
  },
  NotifyWARNBorder = {
    bg = "NONE",
    fg = "#393320"
  },
  NotifyWARNIcon = {
    fg = "#9e7a21"
  },
  NotifyWARNTitle = {
    fg = "#9e7a21"
  },
  NvimTreeFolderIcon = {
    bg = "NONE",
    fg = "#2483d6"
  },
  NvimTreeGitDeleted = {
    fg = "#de3b3d"
  },
  NvimTreeGitDirty = {
    fg = "#9e7a21"
  },
  NvimTreeGitNew = {
    fg = "#6d8d22"
  },
  NvimTreeImageFile = {
    fg = "#57606d"
  },
  NvimTreeIndentMarker = {
    fg = "#242c37"
  },
  NvimTreeNormal = {
    bg = "#0e151f",
    fg = "#57606d"
  },
  NvimTreeNormalNC = {
    bg = "#0e151f",
    fg = "#57606d"
  },
  NvimTreeOpenedFile = {
    bg = "#19202b"
  },
  NvimTreeRootFolder = {
    bold = true,
    fg = "#2483d6"
  },
  NvimTreeSpecialFile = {
    fg = "#8c5ee8",
    underline = true
  },
  NvimTreeSymlink = {
    fg = "#2483d6"
  },
  NvimTreeWinSeparator = {
    bg = "#0e151f",
    fg = "#0e151f"
  },
  Operator = {
    fg = "#6d8d22"
  },
  Pmenu = {
    bg = "#242c37",
    fg = "#a09788"
  },
  PmenuSbar = {
    fg = "#242c37",
    reverse = true
  },
  PmenuSel = {
    bg = "#ded4c5",
    fg = "#3d4551",
    reverse = true
  },
  PmenuThumb = {
    fg = "#a09788",
    reverse = true
  },
  PreProc = {
    fg = "#de3b3d"
  },
  Question = {
    bold = true,
    fg = "#279382"
  },
  QuickFixLine = {
    bg = "#1c578d",
    bold = true
  },
  RainbowDelimiterBlue = {
    fg = "#2483d6"
  },
  RainbowDelimiterCyan = {
    fg = "#279382"
  },
  RainbowDelimiterGreen = {
    fg = "#6d8d22"
  },
  RainbowDelimiterOrange = {
    fg = "#c06321"
  },
  RainbowDelimiterRed = {
    fg = "#de3b3d"
  },
  RainbowDelimiterViolet = {
    fg = "#8c5ee8"
  },
  RainbowDelimiterYellow = {
    fg = "#9e7a21"
  },
  ReferencesCount = {
    fg = "#8c5ee8"
  },
  ReferencesIcon = {
    fg = "#2483d6"
  },
  ScrollbarError = {
    bg = "NONE",
    fg = "#de3b3d"
  },
  ScrollbarErrorHandle = {
    bg = "#19202b",
    fg = "#de3b3d"
  },
  ScrollbarHandle = {
    bg = "#19202b",
    fg = "NONE"
  },
  ScrollbarHint = {
    bg = "NONE",
    fg = "#279382"
  },
  ScrollbarHintHandle = {
    bg = "#19202b",
    fg = "#279382"
  },
  ScrollbarInfo = {
    bg = "NONE",
    fg = "#2483d6"
  },
  ScrollbarInfoHandle = {
    bg = "#19202b",
    fg = "#2483d6"
  },
  ScrollbarMisc = {
    bg = "NONE",
    fg = "#8c5ee8"
  },
  ScrollbarMiscHandle = {
    bg = "#19202b",
    fg = "#8c5ee8"
  },
  ScrollbarSearch = {
    bg = "NONE",
    fg = "#c06321"
  },
  ScrollbarSearchHandle = {
    bg = "#19202b",
    fg = "#c06321"
  },
  ScrollbarWarn = {
    bg = "NONE",
    fg = "#9e7a21"
  },
  ScrollbarWarnHandle = {
    bg = "#19202b",
    fg = "#9e7a21"
  },
  Search = {
    fg = "#9e7a21",
    reverse = true
  },
  SignColumn = {
    fg = "#a09788"
  },
  SignColumnSB = {
    fg = "#a09788"
  },
  Sneak = {
    bg = "#c841a4",
    fg = "#19202b"
  },
  SneakScope = {
    bg = "#19202b"
  },
  Special = {
    fg = "#c06321"
  },
  SpecialKey = {
    fg = "#57606d"
  },
  SpellBad = {
    sp = "#de3b3d",
    undercurl = true
  },
  SpellCap = {
    sp = "#8c5ee8",
    undercurl = true
  },
  SpellLocal = {
    sp = "#279382",
    undercurl = true
  },
  SpellRare = {
    sp = "#9e7a21",
    undercurl = true
  },
  Statement = {
    fg = "#6d8d22"
  },
  StatusLine = {
    bg = "#19202b",
    fg = "#bfb5a6"
  },
  StatusLineNC = {
    bg = "#0e151f",
    fg = "#a09788"
  },
  String = {
    fg = "#279382"
  },
  Substitute = {
    bg = "#de3b3d",
    fg = "#0e151f"
  },
  TSNodeKey = {
    bold = true,
    fg = "#c841a4"
  },
  TSNodeUnmatched = {
    fg = "#3d4551"
  },
  TSRainbowBlue = {
    fg = "#2483d6"
  },
  TSRainbowCyan = {
    fg = "#279382"
  },
  TSRainbowGreen = {
    fg = "#6d8d22"
  },
  TSRainbowOrange = {
    fg = "#c06321"
  },
  TSRainbowRed = {
    fg = "#de3b3d"
  },
  TSRainbowViolet = {
    fg = "#8c5ee8"
  },
  TSRainbowYellow = {
    fg = "#9e7a21"
  },
  TabLine = {
    bg = "#242c37",
    fg = "#a09788",
    sp = "#a09788"
  },
  TabLineFill = {
    bg = "#19202b",
    fg = "#a09788"
  },
  TabLineSel = {
    bg = "#0e151f",
    fg = "#9e7a21"
  },
  TargetWord = {
    fg = "#279382"
  },
  TelescopeBorder = {
    bg = "#0e151f",
    fg = "#242c37"
  },
  TelescopeNormal = {
    bg = "#0e151f",
    fg = "#a09788"
  },
  Title = {
    bold = true,
    fg = "#c06321"
  },
  Todo = {
    bold = true,
    fg = "#c841a4"
  },
  TreesitterContext = {
    bg = "#322155"
  },
  TroubleCount = {
    fg = "#c841a4"
  },
  TroubleNormal = {
    fg = "#a09788"
  },
  TroubleText = {
    fg = "#a09788"
  },
  Type = {
    fg = "#9e7a21"
  },
  Underlined = {
    underline = true
  },
  VertSplit = {
    fg = "#57606d"
  },
  Visual = {
    bg = "#19202b",
    reverse = true
  },
  VisualNOS = {
    bg = "#19202b",
    reverse = true
  },
  WarningMsg = {
    bold = true,
    fg = "#c06321"
  },
  WhichKey = {
    fg = "#279382"
  },
  WhichKeyDesc = {
    fg = "#c841a4"
  },
  WhichKeyFloat = {
    bg = "#0e151f"
  },
  WhichKeyGroup = {
    fg = "#2483d6"
  },
  WhichKeySeparator = {
    fg = "#3d4551"
  },
  WhichKeySeperator = {
    fg = "#3d4551"
  },
  WhichKeyValue = {
    fg = "#8c5ee8"
  },
  Whitespace = {
    fg = "#3d4551"
  },
  WildMenu = {
    bg = "#242c37",
    fg = "#ded4c5",
    reverse = true
  },
  WinBar = {
    link = "StatusLine"
  },
  WinBarNC = {
    link = "StatusLineNC"
  },
  WinSeparator = {
    bold = true,
    fg = "#242c37"
  },
  YankyPut = {
    link = "IncSearch"
  },
  YankyYanked = {
    link = "IncSearch"
  },
  debugBreakpoint = {
    bg = "#1c578d",
    fg = "#5aa3eb"
  },
  debugPC = {
    bg = "#0e151f"
  },
  diffAdded = {
    fg = "#6d8d22"
  },
  diffChanged = {
    fg = "#9e7a21"
  },
  diffFile = {
    fg = "#2483d6"
  },
  diffIndexLine = {
    fg = "#c841a4"
  },
  diffLine = {
    fg = "#3d4551"
  },
  diffNewFile = {
    fg = "#c06321"
  },
  diffOldFile = {
    fg = "#8c5ee8"
  },
  diffRemoved = {
    fg = "#de3b3d"
  },
  dosIniLabel = {
    link = "@property"
  },
  healthError = {
    fg = "#de3b3d"
  },
  healthSuccess = {
    fg = "#279382"
  },
  healthWarning = {
    fg = "#9e7a21"
  },
  helpCommand = {
    bg = "#0d2f4e",
    fg = "#2483d6"
  },
  htmlH1 = {
    bold = true,
    fg = "#c841a4"
  },
  htmlH2 = {
    bold = true,
    fg = "#2483d6"
  },
  illuminatedCurWord = {
    bg = "#322155"
  },
  illuminatedWord = {
    bg = "#322155"
  },
  lCursor = {
    bg = "#57606d",
    fg = "#19202b"
  },
  markdownCode = {
    bg = "#26320c",
    fg = "#9e7a21"
  },
  markdownCodeBlock = {
    bg = "#26320c",
    fg = "#9e7a21"
  },
  markdownH1 = {
    bold = true,
    fg = "#c841a4"
  },
  markdownH2 = {
    bold = true,
    fg = "#8c5ee8"
  },
  markdownHeadingDelimiter = {
    bold = true,
    fg = "#c06321"
  },
  markdownLinkText = {
    fg = "#2483d6",
    underline = true
  },
  mkdCode = {
    bg = "#26320c"
  },
  mkdCodeDelimiter = {
    bg = "#495d1b",
    fg = "#a09788"
  },
  mkdCodeEnd = {
    bold = true,
    fg = "#c06321"
  },
  mkdCodeStart = {
    bold = true,
    fg = "#c06321"
  },
  qfFileName = {
    fg = "#8c5ee8"
  },
  qfLineNr = {
    fg = "#a09788"
  },
  rainbowcol1 = {
    fg = "#de3b3d"
  },
  rainbowcol2 = {
    fg = "#c06321"
  },
  rainbowcol3 = {
    fg = "#9e7a21"
  },
  rainbowcol4 = {
    fg = "#6d8d22"
  },
  rainbowcol5 = {
    fg = "#279382"
  },
  rainbowcol6 = {
    fg = "#2483d6"
  },
  rainbowcol7 = {
    fg = "#c841a4"
  }
}
