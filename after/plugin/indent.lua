-- nvim/after/plugin/indent.lua

local hooks  = require('ibl.hooks')
local colors = require('colors')

-- Set the indent line color up.
local hl = { 'Soft' }
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
   vim.api.nvim_set_hl(0, 'Soft', { fg = colors.bg })
end)

require('ibl').setup({
   indent = { highlight = hl },
   scope = { enabled = false }
})
