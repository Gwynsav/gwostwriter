-- nvim/after/plugin/lsp.lua

--- Configure Mason.
require('mason').setup({
   ui = {
      icons = {
         package_installed   = '[I]',
         package_pending     = '[P]',
         package_uninstalled = '[X]'
      }
   }
})
require('mason-lspconfig').setup({
   ensure_installed = { 'lua_ls' }
})

-- Language Servers
-------------------
--- General.
vim.api.nvim_create_autocmd('LspAttach', {
   callback = function(args)
      local client = vim.lsp.get_client_by_id(args.data.client_id)
      if not client then return end

      -- Default mappings:
      --    `gra` brings up code actions.      `gri` jumps to function implementation.
      --    `grn` renames a symbol.            `grr` lists references to a symbol.
      --    `grt` jumps to type definition.    `K`   shows symbol information.
      --    `i_CTRL-X_CTRL-O` shows completion window.
      -- XXX: Add new stuff here...
   end
})
--- Lua.
vim.lsp.enable('lua_ls')
vim.lsp.config('lua_ls', {
   filetypes = { 'lua' },
   settings = {
      Lua = {
         runtime = { version = 'LuaJIT' },
			workspace = { checkThirdParty = false },
			telemetry = { enable = false },
         diagnostics = {
            globals = { 'vim', 'awesome', 'client', 'screen', 'mouse', 'tag' }
         }
      }
   }
})
