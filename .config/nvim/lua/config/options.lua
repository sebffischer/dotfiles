local opt = vim.opt
local g = vim.g

-- sources:
-- https://github.com/tjdevries/config_manager/blob/master/xdg_config/nvim/plugin/options.lua
-- https://github.com/mllg/dotfiles/blob/master/.config/nvim/lua/options.lua

vim.api.nvim_command("set laststatus=3")

-- Probably this belongs somewhere else
-- require"plenary.filetype".add_file("r")

g.indent_blankline_filetype_exclude = {
	"terminal",
}
g.indent_blankline_filetype_exclude = {
	"help",
}
g.indent_blankline_buftype_exclude = {
	"terminal",
	"nofile",
	"packer",
}

g.tw = 120

vim.cmd([[set wildoptions+=pum]])
--
-- appearance
-- opt.termguicolors = true
opt.cursorline = true
opt.number = true
opt.relativenumber = true
opt.scrolloff = 5
vim.wo.colorcolumn = "120"
vim.opt.list = true

-- Example config in Lua
-- vim.g.tokyonight_style = "storm"
-- vim.g.tokyonight_italic_functions = true
-- vim.g.tokyonight_sidebars = {"qf", "vista_kind", "terminal", "packer"}
--
---- Change the "hint" color to the "orange" color, and make the "error" color bright red
-- vim.g.tokyonight_colors = {hint = "orange", error = "#ff0000"}

-- Load the colorscheme
-- vim.cmd [[let g:onedark_style = 'deep']]
vim.cmd([[hi! Cursor guifg=NONE guibg=#ebdbb2 gui=NONE cterm=NONE]])
-- vim.g.onedark_style = "darker"
-- vim.cmd[[set ai]] -- ? TODO what are these
-- vim.cmd[[set si]]
-- vim.cmd[[set et]]
-- vim.cmd[[set sr]]
vim.cmd([[let g:mkdp_auto_start = 0]])
vim.cmd([[let g:mkdp_browser = 'firefox']])
vim.cmd([[let g:mkdp_echo_preview_url = 1]])

-- R options
g.R_nvim_wd = -1
g.R_assign = 0
g.R_nvimpager = "horizontal"
g.rout_follow_colorscheme = 1 -- this is not really working with radian
g.R_openpdf = 0
g.R_openhtml = 0
-- g.R_nvim_wd = -1

g.R_bracketed_paste = 1
-- vim.g.R_app = "radian"
-- vim.g.R_app = "/home/sebi/miniconda3/envs/yahpo_gym/bin/radian"
-- vim.g.R_bracketed_paste = 1
vim.g.R_cmd = "R"
vim.g.R_hl_term = 0
vim.g.r_indent_align_args = 0
vim.g.R_args = {}

-- Indentiation
opt.cindent = true -- use C indenting rules (better than autoindent the docs suggests)
opt.autoindent = true
-- opt.smartindent = true
opt.wrap = true -- wrap lines
opt.breakindent = true -- indent when wrapping lines
-- See here http://vimdoc.sourceforge.net/htmldoc/change.html#fo-table
-- o = false means no comment continuation with o and O
opt.formatoptions:append({
	r = true,
	o = false,
	c = true,
})

-- Tabs
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4

-- Other
opt.belloff = "all" -- just turn the damn bell of
opt.inccommand = "split" -- shows result of a command in buffer and preview window
opt.autochdir = false

-- searches
opt.showmatch = true -- show matching bracket when texteditor is over them
opt.ignorecase = true
opt.smartcase = true
opt.gdefault = true
opt.incsearch = true -- incremental search highlighting

-- os integration
opt.clipboard = {
	"unnamedplus",
	"unnamed",
}
opt.mouse = "a"

-- file handling
opt.encoding = "utf-8"

-- localization
opt.spelllang = "en,de"
opt.spellsuggest = "fast,20"

-- completion
opt.completeopt = "menu,menuone,noselect"
opt.shortmess:append({
	c = true,
})

vim.g.indent_blankline_filetype_exclude = {
	"NvimTree",
}

vim.cmd([[let cmdline_map_send = '<A-r>']])
