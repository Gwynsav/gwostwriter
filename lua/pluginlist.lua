-- nvim/lua/pluginlist.lua

return {
   --- Essentials
   --------------
	-- Treesitter (Improved syntax highlighting).
	{
		'nvim-treesitter/nvim-treesitter',
		build = ':TSUpdate'
	},
	-- Comfy commenting.
	{
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	},
	-- LSP
	{
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',
		'neovim/nvim-lspconfig',
		'folke/neodev.nvim'
	},
	-- Code completion.
	{
		'hrsh7th/nvim-cmp',
		dependencies = {
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip',
			'rafamadriz/friendly-snippets',
			'hrsh7th/cmp-nvim-lsp'
		}
	},
	-- Telescope.
   {
      {
         'nvim-telescope/telescope.nvim',
         dependencies = { 'nvim-lua/plenary.nvim' }
      },
      {
         'nvim-telescope/telescope-fzf-native.nvim',
         build = 'make'
      }
   },
   -- git signs.
   'lewis6991/gitsigns.nvim',

   --- User Interface
   ------------------
   -- GUI elements. No devicons because those are for bitches.
   {
      'nvim-lualine/lualine.nvim', -- Status line. 
      'willothy/nvim-cokeline',    -- Buffer list.
      'nvim-tree/nvim-tree.lua'    -- File tree.
   },
   -- Rainbow parenthesis and brackets.
   'HiPhish/rainbow-delimiters.nvim',
   -- Colorize hex/rgb color codes.
   {
      'norcalli/nvim-colorizer.lua',
      config = function()
         require('colorizer').setup()
      end
   },

	-- Colorschemes
   ---------------
   {
      'nyoom-engineering/oxocarbon.nvim',
      -- lazy = false,
      -- priority = 1000,
      -- config = function()
      --    vim.o.background = 'dark'
      --    vim.cmd.colorscheme('oxocarbon')
      -- end
   },
   {
      'maxmx03/solarized.nvim',
      -- lazy = false,
      -- priority = 1000,
      -- config = function()
      --    vim.o.background = 'dark'
      --    vim.cmd.colorscheme('solarized')
      -- end
   },
   {
      'rose-pine/neovim',
      name = 'rose-pine',
      lazy = false,
      priority = 1000,
      config = function()
         vim.o.background = 'dark'
         require('rose-pine').setup({
            variant = 'main',
            -- bold_vert_split = true,
            disable_background = true,
            groups = {
               border = 'base',
               panel  = 'base'
            },
            highlight_groups = {
               CursorLine = { bg = 'surface', blend = 8 }
            }
         })
         vim.cmd.colorscheme('rose-pine')
      end
   }
}
