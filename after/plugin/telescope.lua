-- nvim/after/plugin/telescope.lua

require('telescope').setup({
   pickers = {
      find_files = {
         hidden = true
      }
   },
	extensions = {
		fzf = {
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = 'smart_case'
		}
	}
})

require('telescope').load_extension('fzf')

-- Keybinds
local map = function(keys, func)
   vim.keymap.set('n', keys, func, {})
end
local tele = require('telescope.builtin')

map('<leader>xf', tele.find_files) -- Emacs scarred me.
map('<leader>xj', tele.buffers)
