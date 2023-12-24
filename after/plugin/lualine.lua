-- nvim/after/plugin/lualine.lua

-- Based on shadmansaleh's lualine adaptation of glepnir's eviline theme.
-- https://github.com/nvim-lualine/lualine.nvim/blob/master/examples/evil_lualine.lua

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

local conditions = {
   -- Returns true if the current buffer is not empty.
   buffer_not_empty = function()
      return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
   end,
   -- Returns true if the window is at least 80 columns wide.
   hide_in_width = function()
      return vim.fn.winwidth(0) > 80
   end
}

-- A custom extension to hide the contents of lualine for any of the following 
-- tree plugins.
local empty_for_tree = {
   sections  = {},
   filetypes = { 'CHADTree', 'neo-tree', 'nerdtree', 'NvimTree' }
}

-- Base configuration.
local config = {
   options = {
      -- Disable sections and component separators.
      component_separators = '',
      section_separators   = '',
      globalstatus         = true,
      theme = {
         -- We are going to use lualine_c an lualine_x as left and right section. 
         -- Both are highlighted by the `c` theme. So we are just setting default 
         -- looks for lualine.
         normal   = { c = { fg = colors.fg, bg = colors.bg } },
         inactive = { c = { fg = colors.fg, bg = colors.bg } }
      }
   },
   -- Remove all default components.
   sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_y = {},
      lualine_z = {},
      lualine_c = {},
      lualine_x = {}
   },
   inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_y = {},
      lualine_z = {},
      lualine_c = {},
      lualine_x = {}
   },
   extensions = { empty_for_tree }
}

-- Inserts a component into the left section.
local function ins_left(component)
   table.insert(config.sections.lualine_c, component)
end

-- Inserts a component into the right section.
local function ins_right(component)
   table.insert(config.sections.lualine_x, component)
end


-- Left components
------------------
ins_left({
   function() return '▊' end,
   color   = { fg = colors.bg_light }, -- Sets highlighting of component.
   padding = { left = 0, right = 0 }   -- We don't need a space before this.
})

-- Mode colors and text.
local mode = {
   n      = { 'NR', colors.blue    },
   no     = { 'NR', colors.blue    },
   v      = { 'VS', colors.yellow  },
   [''] = { 'VS', colors.yellow  },
   V      = { 'VS', colors.yellow  },
   s      = { 'SL', colors.yellow  },
   S      = { 'SL', colors.yellow  },
   [''] = { 'SL', colors.yellow  },
   ['r?'] = { '??', colors.yellow  },
   c      = { 'CM', colors.green   },
   r      = { '>>', colors.green   },
   rm     = { '>>', colors.green   },
   t      = { '$$', colors.green   },
   i      = { 'IN', colors.red     },
   ic     = { 'IN', colors.red     },
   R      = { 'RP', colors.red     },
   Rv     = { 'RP', colors.red     },
   ['!']  = { '!!', colors.red     },
   cv     = { 'EX', colors.magenta },
   ce     = { 'EX', colors.magenta }
}
ins_left({
   -- The text indicating the mode.
   function() return mode[vim.fn.mode()][1] end,
   -- Auto-change color according to Neovim's mode.
   color = function()
      return { bg = mode[vim.fn.mode()][2], fg = colors.bg }
   end,
   padding = { left = 1, right = 1 }
})

-- Line:Column indicator.
ins_left({ 'location' })

-- LSP diagnostics indicators.
ins_left({
   'diagnostics',
   sources = { 'nvim_diagnostic' },
   symbols = { error = '!! ', warn = '?? ', info = 'ii ', hint = 'hh '},
   diagnostics_color = {
      error = { fg = colors.red    },
      warn  = { fg = colors.yellow },
      info  = { fg = colors.green  },
      hint  = { fg = colors.blue   }
   }
})

-- Middle components
--------------------
ins_left({ function() return '%=' end })

-- Right components
-------------------
-- Current git branch name.
ins_right({
   'branch',
   icon  = 'branch',
   color = { fg = colors.magenta, gui = 'italic' }
})

-- Current git branch diff information.
ins_right({
   'diff',
   symbols = { added = '+', modified = '~', removed = '-' },
   diff_color = {
      added    = { fg = colors.green },
      modified = { fg = colors.yellow },
      removed  = { fg = colors.red }
   },
   cond = conditions.hide_in_width
})

-- File name and indicators for modification and status.
ins_right({
   'filename',
   cond = conditions.buffer_not_empty,
   color = { fg = colors.magenta }
})

-- File size in Bytes.
ins_right({
   'filesize',
   cond = conditions.buffer_not_empty
})

ins_right({
   function() return '▊' end,
   color   = { fg = colors.bg_light },
   padding = { left = 1 }
})

require('lualine').setup(config)
