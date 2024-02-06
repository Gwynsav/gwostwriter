-- nvim/lua/colors/light/solarized.lua

local colors = {
   bg       = '#eee8d5',
   bg_light = '#93a1a1',
   fg_dark  = '#586e75',
   fg       = '#002b36',
   red      = '#dc322f',
   green    = '#859900',
   yellow   = '#b58900',
   blue     = '#268bd2',
   magenta  = '#d33682',
   cyan     = '#2aa198'
}

-- Configure and set the colorscheme.
vim.o.background = 'light'
require('solarized').setup({
   styles = {
      comments  = { italic = true, bold = false },
      constants = { italic = true, bold = false }
   },
   highlights = {
      CursorLine   = { bg = colors.bg },
      CursorLineNr = { bg = colors.bg },
      WinSeparator = { fg = colors.bg_light }
   },
   theme = 'neo'
})
vim.cmd.colorscheme('solarized')

-- Return a table with the colors that will be used for UI.
return colors
