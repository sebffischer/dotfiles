vim.keymap.set("n", "<leader>tt", "toggle_float", { desc = "Terminal below" })
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
vim.keymap.set("n", "<leader>li", "<cmd>LspInfo<cr>", { desc = "Connected Language Servers" })
vim.keymap.set("n", "<leader>lk", "<cmd>lua vim.lsp.buf.signature_help()<cr>", { desc = "Signature Help" })
vim.keymap.set("n", "<leader>lK", "<cmd>Lspsaga hover_doc<cr>", { desc = "Hover Commands" })
vim.keymap.set("n", "<leader>lw", "<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>", { desc = "Add Workspace Folder" })
vim.keymap.set(
	"n",
	"<leader>lW",
	"<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>",
	{ desc = "Remove Workspace Folder" }
)
vim.keymap.set("n", "<leader>ll", "<cmd>Telescope diagnostics<cr>", { desc = "List diagnostics" })
vim.keymap.set(
	"n",
	"<leader>lf",
	"<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>",
	{ desc = "List Workspace Folders" }
)
vim.keymap.set("n", "<leader>lt", "<cmd>lua vim.lsp.buf.type_definition()<cr>", { desc = "Type Definition" })
vim.keymap.set("n", "<leader>ld", "<cmd>lua vim.lsp.buf.definition()<cr>", { desc = "Go To Definition" })
vim.keymap.set("n", "<leader>lD", "<cmd>lua vim.lsp.buf.declaration()<cr>", { desc = "Go To Declaration" })
vim.keymap.set("n", "<leader>lr", "<cmd>lua vim.lsp.buf.references()<cr>", { desc = "References" })
vim.keymap.set("n", "<leader>lR", "<cmd>Lspsaga rename<cr>", { desc = "Rename" })
vim.keymap.set("n", "<leader>la", "<cmd>Lspsaga code_action<cr>", { desc = "Code Action" })
vim.keymap.set("n", "<leader>le", "<cmd>Lspsaga show_line_diagnostics<cr>", { desc = "Show Line Diagnostics" })
vim.keymap.set("n", "<leader>ln", "<cmd>Lspsaga diagnostic_jump_next<cr>", { desc = "Go To Next Diagnostic" })
vim.keymap.set("n", "<leader>ln", "<cmd>Lspsaga diagnostic_jump_next<cr>", { desc = "Go To Next Diagnostic" })
vim.keymap.set("n", "<leader>lN", "<cmd>Lspsaga diagnostic_jump_prev<cr>", { desc = "Go To Previous Diagnostic" })

vim.api.nvim_create_user_command("Test", function()
	package.loaded.r = nil
	require("r").setup()
end, {})
