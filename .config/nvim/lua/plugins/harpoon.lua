return {
	"ThePrimeagen/harpoon",
	cmd = "<leader>s",
	keys = {
		{ "<leader>ss", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>" },
		{ "<leader>sm", "<cmd>lua require('harpoon.mark').add_file()<cr>" },
	},
}
