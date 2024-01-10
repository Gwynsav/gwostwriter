-- nvim/lua/colors/oxocarbon.lua

-- Configure and set the colorscheme. Sadly oxocarbon doesn't really allow much
-- of anything, so I have to live with it using bold :(
vim.o.background = 'dark'
vim.cmd.colorscheme('oxocarbon')

-- Return a table with the colors that will be used for UI.
return {
   bg       = '#191919',
   bg_light = '#262626',
   fg_dark  = '#525252',
   fg       = '#f2f4f8',
   red      = '#ee5396',
   green    = '#42be65',
   yellow   = '#ff7eb6',
   blue     = '#33b1ff',
   magenta  = '#be95ff',
   cyan     = '#3ddbd9'
}
