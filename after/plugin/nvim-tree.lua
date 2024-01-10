-- nvim/after/plugin/nvim-tree.lua

-- Simple NvimTree setup. No icons, shows all hidden/dotfiles.
require('nvim-tree').setup({
   view    = {
      side  = 'right',
      width = 34
   },
   renderer = {
      -- Get rid of all icons. DEATH TO NERD FONTS!!!
      icons = {
         show = {
            file         = true,
            folder       = false,
            folder_arrow = false,
            git          = true,
            modified     = false,
            diagnostics  = false,
            bookmarks    = true
         },
         web_devicons = {
            file   = { enable = false },
            folder = { enable = false }
         },
         glyphs = {
            default  = '',
            symlink  = '->',
            bookmark = '<3',
            git      = {
               unstaged  = '+',
               staged    = '!',
               unmerged  = 'X',
               renamed   = '>',
               deleted   = '*',
               untracked = '?',
               ignored   = '?'
            }
         }
      }
   },
   filters = { dotfiles = false }
})

-- Create a keybind to toggle tree visibility.
vim.cmd([[nnoremap <leader>n :NvimTreeToggle<CR>]])

-- Autostart Neotree.
vim.cmd([[autocmd VimEnter * NvimTreeOpen]])
