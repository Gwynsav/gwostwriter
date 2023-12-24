-- nvim/after/plugin/treesitter.lua

require('nvim-treesitter.configs').setup({
	ensure_installed = { 'vim', 'vimdoc', 'lua', 'c', 'java', 'cpp' },
	auto_install = false,
	highlight = { enable = true },
	indent = { enable = true }
})
