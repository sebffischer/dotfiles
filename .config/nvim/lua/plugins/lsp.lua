return {
	"neovim/nvim-lspconfig",
	---@class PluginLspOpts
	opts = {
		---@type lspconfig.options
		servers = {
			-- pyright will be automatically installed with mason and loaded with lspconfig
			pyright = {},
			r_language_server = {},
			remark_ls = {},
			ltex = {},
			sumneko_lua = {},
		},
	},
}
