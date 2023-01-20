local keymap = vim.api.nvim_set_keymap
vim.g.maplocalleader = "\\"
vim.g.mapleader = " "

local opts = {
	noremap = true,
	silent = true,
}

keymap("i", "jj", "<esc>", opts)
keymap("n", "L", "$", opts)
keymap("n", "H", "^", opts)

vim.api.nvim_set_keymap('n', '<bs>', '<c-^>\'”zz', { silent = true, noremap = true })

---------------------------------------------------------------------------------------------------
-- https://www.youtube.com/watch?v=hSHATqh8svM
--  the following keymaps are from the video
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)
-- keymap("n", "J", "mzJ`z", opts)

keymap("n", "<leader>sv", "<cmd>luafile $MYVIMRC<cr>", opts)

-- Undo break points
keymap("i", ",", ",<c-g>u", opts)
keymap("i", ".", ".<c-g>u", opts)
keymap("i", "!", "!<c-g>u", opts)
keymap("i", "?", "?<c-g>u", opts)
keymap("i", "::", "::<c-g>u", opts)
keymap("i", ":", ":<c-g>u", opts)

-- ctrl + I / O also works when using relative line jumps (> 5)
vim.cmd([[nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k']])
vim.cmd([[nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j']])

-- Moving text
-- vim.cmd([[vnoremap J :m '>+1<CR>gv=gv]])
-- vim.cmd([[vnoremap K :m '<-2<CR>gv=gv]])
vim.cmd([[inoremap <C-j> <esc>:m .+1<CR>==i]])
vim.cmd([[inoremap <C-k> <esc>:m .-2<CR>==i]])
-- vim.cmd [[nnoremap <leader>k :m .-2<CR>==]]
-- vim.cmd [[nnoremap <leader>j :m .+1<CR>==]]

---------------------------------------------------------------------------------------------------

-- navigate between vim splits
keymap("n", "<c-j>", "<c-w>j", opts)
keymap("n", "<c-h>", "<c-w>h", opts)
keymap("n", "<c-k>", "<c-w>k", opts)
keymap("n", "<c-l>", "<c-w>l", opts)

---------------------------------------------------------------------------------------------------

-- R keybindings
keymap("n", "<A-r>", "<Plug>RDSendLine", {
	noremap = false,
})
keymap("v", "<A-r>", "<Plug>RDSendSelection", {
	noremap = false,
})

-- R Keybindings
keymap("n", "<leader>rt", "<cmd>RSetupTest<cr>", opts)
keymap("n", "<leader>rr", "\rf", {})

-- easier pipeopes
keymap("i", "<A-p>", "%>>%", opts)


-- Luasnip

local ls = require("luasnip")

local luasnip_next = function()
	if ls.expand_or_jumpable() then
		ls.expand_or_jump()
	end
end
local luasnip_previous = function()
	if ls.jumpable(-1) then
		ls.jump(-1)
	end
end
local luasnip_paginate = function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end
vim.keymap.set(
	{
		"i",
	},
	"<c-j>",
	luasnip_next,
	{
		silent = true,
		noremap = true,
	}
)
vim.keymap.set(
	{
		"i",
	},
	"<c-k",
	luasnip_previous,
	{
		silent = true,
	}
)
vim.keymap.set(
	{
		"i",
	},
	"<c-s>",
	luasnip_paginate,
	{
		silent = true,
	}
)
vim.keymap.set("n", "<leader><leader>s", "<cmd>source ~/.config/nvim/lua/luasnip-config.lua<CR>")

vim.keymap.set({"i", "n", "v"}, "<caps>", "<ctrl>")


-- Be able to go into terminal normal mode using <Esc>
keymap("t", "<Esc>", "<C-\\><C-n>", opts)
