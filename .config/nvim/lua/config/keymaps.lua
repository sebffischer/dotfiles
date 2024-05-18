vim.keymap.set("n", "<leader>tt", "toggle_float", { desc = "Terminal below" })
vim.keymap.set("n", "s", "<Nop>")
vim.keymap.set("n", "s", "<Nop>")

vim.keymap.set({ "v", "n", "s" }, "<C-s>", "<cmd>noa w<cr><esc>", { desc = "Save file wo formatting" })
vim.keymap.set({ "v", "n", "s" }, "<space>r", "<Plug>RStart")

vim.keymap.set("n", "Quickfix", "")
vim.keymap.set("n", "<leader>F", "<cmd>lua vim.lsp.buf.format({timeout_ms = 2000})<cr>", { desc = "Format" })

vim.keymap.set("i", "jj", "<esc>", { desc = "Escape" })

vim.keymap.set("n", "L", "$", { desc = "End of Line" })
vim.keymap.set("n", "0", "^", { desc = "Start of Text on Line" })

-- Quickfix
vim.keymap.set("n", "<leader>qq", "<cmd>copen<cr>", { desc = "Open Quickfix" })
vim.keymap.set("n", "<leader>qn", "<cmd>cn<cr>", { desc = "Quickfix Next" })
vim.keymap.set("n", "<leader>qp", "<cmd>cp<cr>", { desc = "Quickfix Previous" })
vim.keymap.set("n", "<leader>qc", "<cmd>ccl<cr>", { desc = "Quickfix Close" })

vim.keymap.set(
	"n",
	"<leader>fs",
	"<cmd> Telescope lsp_document_symbols<cr>",
	{ desc = "Document Symbols (only from open file)" }
)
vim.keymap.set("n", "<leader>fc", "<cmd> Telescope find_files cwd=~/.dotfiles <cr>", { desc = "Config files " })
vim.keymap.set("n", "<leader>fn", "<cmd> Telescope find_files cwd=~/neorg <cr>", { desc = "Neorg notes" })
--
vim.api.nvim_create_user_command("Test", function()
	package.loaded.r = nil
	require("r").setup()
end, {})
