return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"bash",
				"c",
				"comment", -- This colorizes roxygen tags like "@description"
				"html",
				"json",
				"lua",
				"markdown",
				"markdown_inline",
				"help",
				"python",
				"query",
				"regex",
				"r",
				"rust",
				"tsx",
				"typescript",
				"vim",
				"yaml",
			},
			highlight = {
				enable = true,
			},
			indent = { enable = false },
			rainbow = { enable = true },
		},
	},
}
