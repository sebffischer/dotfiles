return {
	"jackMort/ChatGPT.nvim",
	cmd = "ChatGPT",
	dependencies = {
		"MunifTanjim/nui.nvim",
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
	config = function(_, opts)
		require("chatgpt").setup()
	end,
}
