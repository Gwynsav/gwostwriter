-- nvim/lua/colors/light/mardel.lua

local colors = {
   bg       = '#edecea',
   bg_light = '#c2c1bd',
   fg_dark  = '#848483',
   fg       = '#404040',
   red      = '#ac3251',
   green    = '#5c7b2d',
   yellow   = '#a47c33',
   blue     = '#2b699e',
   magenta  = '#c15072',
   cyan     = '#2f7ba0'
}

local p = {
   base00 = '#f5f5f5',
   base01 = colors.bg,
   base02 = '#dddcd8',
   base03 = colors.bg_light,
   base04 = '#666666',
   base05 = colors.fg,
   base06 = '#9b9a97',
   base07 = colors.fg_dark,
   base08 = colors.red,
   base09 = colors.yellow,
   base0A = colors.magenta,
   base0B = colors.green,
   base0C = colors.yellow,
   base0D = colors.blue,
   base0E = colors.cyan,
   base0F = colors.green
}

-- Configure and set the colorscheme.
vim.o.background = 'dark'
require('mini.base16').setup({ palette = p })
vim.g.colors_name = 'mardel-dark'

-- Override some (ok, kind of a lot of) colors.
local function hi(group, args)
   vim.api.nvim_set_hl(0, group, args)
end
-- Line numbers.
hi('LineNr',       { fg = p.base03, bg = p.base00 })
hi('LineNrAbove',  { fg = p.base03, bg = p.base00 })
hi('LineNrBelow',  { fg = p.base03, bg = p.base00 })
hi('CursorLineNr', { fg = p.base04, bg = p.base01 })
hi('SignColumn',   { fg = p.base04, bg = nil })
-- Separators.
hi('VertSplit',    { fg = p.base01, bg = nil })
hi('WinSeparator', { fg = p.base01, bg = nil })
-- Diagnostics.
hi('DiagnosticError', { fg = p.base08, bg = nil })
hi('DiagnosticWarn',  { fg = p.base0C, bg = nil })
hi('DiagnosticInfo',  { fg = p.base0D, bg = nil })
hi('DiagnosticHint',  { fg = p.base0A, bg = nil })
hi('DiagnosticOk',    { fg = p.base0B, bg = nil })
hi('DiagnosticFloatingError', { fg = p.base08, bg = nil })
hi('DiagnosticFloatingWarn',  { fg = p.base0C, bg = nil })
hi('DiagnosticFloatingInfo',  { fg = p.base0D, bg = nil })
hi('DiagnosticFloatingHint',  { fg = p.base0A, bg = nil })
hi('DiagnosticFloatingOk',    { fg = p.base0B, bg = nil })
hi('DiagnosticUnderlineError', { fg = nil, bg = nil, underline = true, sp = p.base08 })
hi('DiagnosticUnderlineWarn',  { fg = nil, bg = nil, underline = true, sp = p.base0C })
hi('DiagnosticUnderlineInfo',  { fg = nil, bg = nil, underline = true, sp = p.base0D })
hi('DiagnosticUnderlineHint',  { fg = nil, bg = nil, underline = true, sp = p.base0A })
hi('DiagnosticUnderlineOk',    { fg = nil, bg = nil, underline = true, sp = p.base0B })
-- Standard syntax.
hi('Comment',    { fg = p.base04, bg = nil })
hi('Operator',   { fg = p.base07, bg = nil })
hi('Keyword',    { fg = p.base0B, bg = nil })
hi('Function',   { fg = p.base0C, bg = nil })
hi('Identifier', { fg = p.base0E, bg = nil })
-- Treesitter.
hi('@keyword.function',     { fg = p.base0D, bg = nil })
-- Delimeters.
hi('RainbowDelimiterRed',    { fg = p.base08, bg = nil, attr = nil, sp = nil})
hi('RainbowDelimiterYellow', { fg = p.base0C, bg = nil, attr = nil, sp = nil})
hi('RainbowDelimiterBlue',   { fg = p.base0B, bg = nil, attr = nil, sp = nil})
hi('RainbowDelimiterOrange', { fg = p.base0A, bg = nil, attr = nil, sp = nil})
hi('RainbowDelimiterGreen',  { fg = p.base08, bg = nil, attr = nil, sp = nil})
hi('RainbowDelimiterCyan',   { fg = p.base0C, bg = nil, attr = nil, sp = nil})
hi('RainbowDelimiterViolet', { fg = p.base0B, bg = nil, attr = nil, sp = nil})
-- Dashboard.
hi('MiniStarterHeader',     { fg = p.base0F, bg = nil, attr = nil, sp = nil})
hi('MiniStarterSection',    { fg = p.base0C, bg = nil, attr = nil, sp = nil})
hi('MiniStarterItemBullet', { fg = p.base06, bg = nil, attr = nil, sp = nil})
hi('MiniStarterItemPrefix', { fg = p.base08, bg = nil, bold = false, sp = nil})
hi('MiniStarterFooter',     { fg = p.base04, bg = nil, attr = nil, sp = nil})
-- Others.
hi('Bold',   { fg = nil, bg = nil, bold   = false, sp = nil })
hi('Italic', { fg = nil, bg = nil, italic = false, sp = nil })

-- Return a table with the colors that will be used for UI.
return colors
