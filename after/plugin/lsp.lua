-- nvim/after/plugin/lsp.lua

-- Sets LSP keybinds up.
local on_attach = function(_, bufnr)
	local bufmap = function(keys, func)
		vim.keymap.set('n', keys, func, { buffer = bufnr })
	end

	bufmap('<leader>r', vim.lsp.buf.rename)
	bufmap('<leader>a', vim.lsp.buf.code_action)
	bufmap('gd', vim.lsp.buf.definition)
	bufmap('gD', vim.lsp.buf.declaration)
	bufmap('gI', vim.lsp.buf.implementation)
	bufmap('<leader>D', vim.lsp.buf.type_definition)

	-- Telescope LSP keybinds.
	bufmap('gr', require('telescope.builtin').lsp_references)
	bufmap('<leader>s', require('telescope.builtin').lsp_document_symbols)
	bufmap('<leader>S', require('telescope.builtin').lsp_dynamic_workspace_symbols)

	bufmap('K', vim.lsp.buf.hover)

	vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
		vim.lsp.buf.format()
	end, {})
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- Sets the language server installer up.
require('mason').setup()
require('mason-lspconfig').setup_handlers({
	-- General handler.
	function(server_name)
		require('lspconfig')[server_name].setup({
			on_attach = on_attach,
			capabilities = capabilities
		})
	end,
	-- Lua handler.
	['lua_ls'] = function()
		-- Prevent LSP from marking "vim" as an undefined global.
		require('neodev').setup()
		require('lspconfig').lua_ls.setup({
			on_attach = on_attach,
			capabilities = capabilities,
			Lua = {
				workspace = { checkThirdParty = false },
				telemetry = { enable = false },
            diagnostics = {
               globals = { 'vim', 'awesome', 'client', 'screen', 'mouse', 'tag' }
            }
			}
		})
	end
})
