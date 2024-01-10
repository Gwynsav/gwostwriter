-- nvim/lua/options.lua
-- Contains stock Vim options.

-- Binds <space> to leader.
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Shares nvim registers with system clipboard.
vim.o.clipboard = 'unnamedplus'

vim.o.number = true
vim.o.signcolumn = 'yes'
vim.o.tabstop = 3
vim.o.shiftwidth = 3
vim.o.expandtab = true
vim.o.cursorline = true

-- Requirement for pretty much every colorscheme every.
vim.o.termguicolors = true
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Enables mouse support.
vim.o.mouse = 'a'

-- Removes the `~` character for empty lines.
vim.o.fillchars = 'eob: '

vim.o.updatetime = 300
