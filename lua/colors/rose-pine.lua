-- nvim/lua/colors/rose-pine.lua

-- Configure and set the colorscheme.
vim.o.background = 'dark'
require('rose-pine').setup({
   dark_variant = 'main',
   groups = {
      -- Dark base color for background.
      background = '#16141f',
      border     = 'base',
      panel      = 'base'
   },
   highlight_groups = {
      CursorLine = { bg = 'surface', blend = 8 }
   },
   styles = {
      bold   = false,
      italic = true
   }
})
vim.cmd.colorscheme('rose-pine')

-- Return a table with the colors that will be used for UI.
return {
   bg       = '#191724',
   bg_light = '#26233a',
   fg_dark  = '#908caa',
   fg       = '#e0def4',
   red      = '#eb6f92',
   green    = '#31748f',
   yellow   = '#f6c177',
   blue     = '#9ccfd8',
   magenta  = '#c4a7e7',
   cyan     = '#ebbcba'
}
