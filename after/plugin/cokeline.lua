-- nvim/after/plugin/cokeline.lua

local colors = require('colors')

local cl_bind = require('cokeline.mappings')
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

-- Switch focused buffer.
vim.keymap.set('n', '<leader>h', function() cl_bind.by_step('focus', -1) end)
vim.keymap.set('n', '<leader>l', function() cl_bind.by_step('focus', 1)  end)
-- Reorder buffers in bufferline.
vim.keymap.set('n', '<c-h>', function() cl_bind.by_step('switch', -1) end)
vim.keymap.set('n', '<c-l>', function() cl_bind.by_step('switch', 1)  end)
-- Close buffer. `by_step` technically takes -1|1, I kinda cheated here by reading the
-- source.
vim.keymap.set('n', '<leader>c', function() cl_bind.by_step('close', 0)  end)
