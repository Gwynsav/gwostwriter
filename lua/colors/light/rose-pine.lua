-- nvim/lua/colors/light/rose-pine.lua

-- Configure and set the colorscheme.
vim.o.background = 'light'
require('rose-pine').setup({
   groups = {
      border = 'overlay',
      panel  = 'overlay'
   },
   highlight_groups = {
      CursorLine = { bg = 'muted', blend = 4 }
   },
   styles = {
      bold   = false,
      italic = true
   }
})
vim.cmd.colorscheme('rose-pine')

-- Return a table with the colors that will be used for UI.
return {
   bg       = '#f2e9e1',
   bg_light = '#cecacd',
   fg_dark  = '#797593',
   fg       = '#575279',
   red      = '#b4637a',
   green    = '#286983',
   yellow   = '#ea9d34',
   blue     = '#56949f',
   magenta  = '#907aa9',
   cyan     = '#d7827e'
}
