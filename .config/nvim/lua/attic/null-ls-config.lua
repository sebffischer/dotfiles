local null_ls = require("null-ls")

require("null-ls").setup({
	sources = {
		null_ls.builtins.formatting.stylua,
		-- null_ls.builtins.formatting.styler, # handled by r language server
		-- null_ls.builtins.formatting.black,
		-- null_ls.builtins.formatting.codespell,
		-- null_ls.builtins.completion.luasnip,
		-- null_ls.builtins.diagnostics.fish,
		-- null_ls.builtins.diagnostics.luacheck,
		-- null_ls.builtins.diagnostics.pylint,
	},
	-- you can reuse a shared lspconfig on_attach callback here
	-- on_attach = function(client)
	-- 	if client.resolved_capabilities.document_formatting then
	-- 		vim.cmd([[
	--            augroup LspFormatting
	--                autocmd! * <buffer>
	--                autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
	--            augroup END
	--            ]])
	-- 	end
	-- end,
})
