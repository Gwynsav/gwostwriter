-- nvim/lua/plugin.lua

-- Checks whether lazy is installed, does so if not.
local path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(path) then
	vim.fn.system({
		'git',
		'clone',
		'--filter=blob:none',
		'https://github.com/folke/lazy.nvim.git',
		'--branch=stable',
		path
	})
end
vim.opt.rtp:prepend(path)

require('lazy').setup('pluginlist')
