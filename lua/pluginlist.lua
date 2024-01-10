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
		config = function() require('Comment').setup() end
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
      config = function() require('colorizer').setup() end
   },

	-- Colorschemes
   ---------------
   {
      'nyoom-engineering/oxocarbon.nvim',
      'maxmx03/solarized.nvim',
      { 'rose-pine/neovim', name = 'rose-pine' }
   }
}
