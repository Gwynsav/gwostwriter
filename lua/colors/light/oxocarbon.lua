-- nvim/lua/colors/light/oxocarbon.lua

-- Configure and set the colorscheme. Sadly oxocarbon doesn't really allow much
-- of anything, so I have to live with it using bold :(
vim.o.background = 'light'
vim.cmd.colorscheme('oxocarbon')

-- Return a table with the colors that will be used for UI.
return {
   bg       = '#f2f2f2',
   bg_light = '#d0d0d0',
   fg_dark  = '#525252',
   fg       = '#161616',
   red      = '#ee5396',
   green    = '#42be65',
   yellow   = '#ff6f00',
   blue     = '#0f62fe',
   magenta  = '#673ab7',
   cyan     = '#08bdba'
}
