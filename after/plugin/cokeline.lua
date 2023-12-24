-- nvim/after/plugin/cokeline.lua

local colors = {
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

local get_hex = require('cokeline.hlgroups').get_hl_attr

require('cokeline').setup({
   default_hl = {
      fg = function(buffer)
         return buffer.is_focused and colors.fg or get_hex('Comment', 'fg')
      end,
      bg = function(buffer)
         return buffer.is_focused and 'NONE' or colors.bg
      end
   },
   components = {
      {
         text = function(buffer)
            return '  ' .. buffer.unique_prefix .. buffer.filename .. '  '
         end
      }
   },
   sidebar = {
      filetype   = { 'CHADTree', 'nerdtree', 'neo-tree', 'NvimTree' },
      components = { { text = ' File Tree ', fg = colors.yellow } }
   }
})
