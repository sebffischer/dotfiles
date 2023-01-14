local lspconfig = require("lspconfig")
require("lsp.handlers")

local on_attach = function(client)
	if client.server_capabilities.document_formatting then
		-- vim.api.nvim_command([[augroup Format]])
		-- vim.api.nvim_command([[autocmd! * <buffer>]])
		-- vim.api.nvim_command([[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync(nil, 10000)]])
		-- vim.api.nvim_command([[augroup END]])
		-- vim.api.nvim_create_autocmd("BufWritePre", {
		-- 	pattern = "*",
		-- 	callback = function()
		-- 		vim.lsp.buf.formatting_sync()
		-- 	end,
		-- })
	end
end

lspconfig.pyright.setup({ on_attach = on_attach }) -- no on_attach because I want to use black
lspconfig.r_language_server.setup({ on_attach = on_attach }) -- R
lspconfig.julials.setup({ on_attach = on_attach }) -- R
lspconfig.sumneko_lua.setup({
	cmd = {
		"lua-language-server",
	},
	on_attach = on_attach,
	settings = {
		Lua = {
			diagnostics = {
				enable = true,
				globals = {
					-- For config
					"vim",
					"use",
				},
			},
		},
	},
}) -- lua

lspconfig.clangd.setup({})
lspconfig.gopls.setup({})
