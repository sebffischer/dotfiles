-- -- Telescope keymaps
--
-- vim.keymap.set(
-- )
-- vim.keymap.set(
-- 	"n",
-- 	"<leader>ft",
-- 	"<cmd>lua require('telescope.builtin').treesitter()<cr>",
-- 	{ desc = "Treesitter symbols" }
-- )
return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	lazy = false,
	requires = {
		"nvim-lua/plenary.nvim",
		"kdheepak/lazygit.nvim",
		"nvim-telescope/telescope-live-grep-raw.nvim",
	},
	keys = function()
        -- This replaces the existing keybindings
		return {
			{ "<leader>/", false },
			{ "<leader>fr", "<cmd>lua require('telescope.builtin').resume()<cr>", { desc = "Resume" } },
			{ "<leader>mff", "<cmd> Telescope find_files cwd=~/mlr <cr>", { desc = "Search mlr3 files" } },
			{ "<leader>mfg", "<cmd> Telescope live_grep cwd=~/mlr <cr>", { desc = "Grep mlr3 files" } },
			{ "<leader>fd", "<cmd>Telescope diagnostics<cr>", { desc = "LSP diagnostics" } },
			{
				"<leader>fl",
				"<cmd> Telescope lsp_dynamic_workspace_symbols<cr>",
				{ desc = "Dynamic Workspace Symbols" },
			},
			{ "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", { desc = "Files" } },
			{ "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", { desc = "Live grep" } },
			{ "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>", { desc = "Git (H)istory" } },
		}
	end,
}
