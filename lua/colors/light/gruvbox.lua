-- nvim/lua/colors/light/gruvbox.lua

-- Configure and set the colorscheme.
vim.o.background = 'light'
require('gruvbox').setup({
   bold = false,
   italic = {
      emphasis  = true,
      comments  = true,
      folds     = false,
      strings   = false,
      operators = false
   }
})
vim.cmd.colorscheme('gruvbox')

-- Return a table with the colors that will be used for UI.
return {
   bg       = '#f2e5bc',
   bg_light = '#d5c4a1',
   fg_dark  = '#665c54',
   fg       = '#3c3836',
   red      = '#9d0006',
   green    = '#79740e',
   yellow   = '#b57614',
   blue     = '#076678',
   magenta  = '#8f3f71',
   cyan     = '#427b58'
}

