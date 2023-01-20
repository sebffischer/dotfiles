-- Bootstrap packer
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({
		"git",
		"clone",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	vim.api.nvim_command("packadd packer.nvim")
end

-- Plugins
require("packer").startup(function() -- packer manages itself use {'wbthomason/packer.nvim' }
	use({
		"wbthomason/packer.nvim",
	})
	use({ "/home/sebi/r/rrepl.nvim" })

    use({"williamboman/mason.nvim"})

	use({ "zbirenbaum/copilot.lua" })
	use({
		"zbirenbaum/copilot-cmp",
		after = { "copilot.lua" },
		config = function()
			require("copilot_cmp").setup()
		end,
	})

    use({"hkupty/iron.nvim"})

	use({
		"lewis6991/gitsigns.nvim", -- sign column
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("gitsigns").setup()
		end,
	})

	-- use({"folke/zen-mode.nvim"})
	-- use({"folke/twilight.nvim"})

	use({
		"phaazon/hop.nvim",
	})
	require("hop").setup()

	use({
		"tami5/lspsaga.nvim",
		config = function()
			require("lspsaga").setup()
    end,
    })

    use({
        "folke/tokyonight.nvim",
    })
    use({
        "folke/which-key.nvim",
    })
    -- require("onedark-nvim").setup()
    use({
        "navarasu/onedark.nvim",
	})
	use({
		"xiyaowong/nvim-transparent",
	})

	use({
		"p00f/nvim-ts-rainbow",
	}) -- rainbow brackets

	use({
		"Olical/conjure",
	}) -- scheme support
	use({
		"mhinz/vim-startify",
		config = "require('startify-config')",
	})
	use({
		"hoob3rt/lualine.nvim",
		requires = {
			"kyazdani42/nvim-web-devicons",
		},
		config = "require('lualine-config')",
	}) -- start screen
	use({
		"lukas-reineke/indent-blankline.nvim",
	})
	-- visualize blank likes
	use({
		"ur4ltz/surround.nvim",
		config = "require('surround-config')",
	})
	use({
		"ThePrimeagen/vim-be-good",
	}) -- game

	use({
		"tpope/vim-fugitive",
	}) -- git support

	use({
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
	})
	use({
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup()
		end,
	})

	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup({})
		end,
	})
	use({
		"akinsho/toggleterm.nvim",
		config = "require('toggleterm-config')",
	})

	-- For better R support
	use({
		"mllg/vim-devtools-plugin",
	})

	use("dag/vim-fish")

	-- Plugins can have post-install/update hooks
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})

	-- Support for R programming
	use({
		"jalvesaq/Nvim-R",
		as = "r",
		requires = "mllg/vim-devtools-plugin",
	})

	use({ "jalvesaq/R-Vim-runtime" })

	use({
		"luukvbaal/stabilize.nvim",
	})

	-- Mark files and move to them quickly
	use({
		"ThePrimeagen/harpoon",
	})

	-- Configure editor (indent etc.)
	use({
		"editorconfig/editorconfig-vim",
	})

	-- Show signature while typing
	use({
		"ray-x/lsp_signature.nvim",
	})

	require("lsp_signature").setup()

	use({
		"nvim-lua/popup.nvim",
	})
	use({
		"nvim-telescope/telescope.nvim",
        branch = '0.1.x',
		requires = {
			"nvim-lua/plenary.nvim",
			"kdheepak/lazygit.nvim",
			"nvim-telescope/telescope-live-grep-raw.nvim",
		},
	})

	use({
		"nvim-telescope/telescope-fzf-native.nvim",
		requires = {
			"nvim-telescope/telescope.nvim",
		},
		run = "make",
		config = function()
			require("telescope").load_extension("fzf")
		end,
	})

	use({ "nvim-telescope/telescope-project.nvim" })
	require("telescope").load_extension("project")

	use({
		"ahmedkhalf/project.nvim",
		requires = { "nvim-telescope/telescope.nvim" },
	})

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		config = "require('treesitter-config')",
	})

	-- use({
	-- 	"nvim-neorg/neorg",
	-- 	requires = "nvim-lua/plenary.nvim",
	-- })
	-- use({
	-- 	"nvim-neorg/neorg-telescope",
	-- })

	use({
		"jose-elias-alvarez/null-ls.nvim",
		config = function()
			require("null-ls").setup()
		end,
		requires = { "nvim-lua/plenary.nvim" },
	})

	-- LSP support
	use({
		"neovim/nvim-lspconfig",
		config = "require('lsp-config')",
	})
	use({
		"williamboman/nvim-lsp-installer",
	})

	use({
		"L3MON4D3/LuaSnip",
	})

	use({
		"hrsh7th/nvim-cmp", -- completion
		requires = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
		},
		config = "require('cmp-config')",
	})

	-- Plugins that I will use in the future but need to set up
	-- For debugging
	-- use { "mfussenegger/nvim-dap" }

	use({
		"mizlan/iswap.nvim",
	})

	use({
		"jalvesaq/vimcmdline",
	})

	-- use({
	--   "junegunn/vim-easy-align"
	-- })

	use({ -- Unix commands like Rename, Move, etc.
		"tpope/vim-eunuch",
	})
	use({ "kyazdani42/nvim-tree.lua" })
	-- Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}

	use({ "rmehri01/onenord.nvim" })

	use({ "vim-pandoc/vim-rmarkdown", requires = { "vim-pandoc/vim-pandoc", "vim-pandoc/vim-pandoc-syntax" } })

	use({ "quarto-dev/quarto-im", requires = "vim-pandoc-syntax" })

	use({ "ziontee113/syntax-tree-surfer" })

	use({ "Shatur/neovim-ayu" })
	--
end)
