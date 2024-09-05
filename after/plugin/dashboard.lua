-- nvim/after/plugin/dashboard.lua

local starter = require('mini.starter')

starter.setup({
   autoopen = true,
   silent   = true,
   header   = 'g w o s t w r i t e r',
   items    = {
      { name = 'New File', action = 'enew', section = 'Utils' },
      { name = 'Find File', action = 'Telescope find_files', section = 'Utils' },
      { name = 'Show Filetree', action = 'NvimTreeOpen', section = 'Utils' },
      { name = 'Exit', action = 'qall', section = 'Utils' },
      starter.sections.recent_files(9, false, true),
   },
   footer   = 'Press the highlighted key to focus an option, then press Enter to confirm!'
})
