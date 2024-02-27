-- nvim/lua/colors/dark/gruvbox.lua

local colors = {
   bg       = '#32302f',
   bg_light = '#3c3836',
   fg_dark  = '#7c6f64',
   fg       = '#ebdbb2',
   red      = '#fb4934',
   green    = '#b8bb26',
   yellow   = '#fabd2f',
   blue     = '#83a598',
   magenta  = '#d3869b',
   cyan     = '#8ec07c'
}

-- Configure and set the colorscheme.
vim.o.background = 'dark'
require('gruvbox').setup({
   bold = false,
   italic = {
      emphasis  = true,
      comments  = true,
      folds     = false,
      strings   = false,
      operators = false
   },
   overrides = {
      CursorLine   = { bg = colors.bg },
      CursorLineNr = { bg = colors.bg },
      WinSeparator = { fg = colors.bg_light }
   }
})
vim.cmd.colorscheme('gruvbox')

-- Return a table with the colors that will be used for UI.
return colors
