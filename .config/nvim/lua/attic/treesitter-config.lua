local parser_configs = require("nvim-treesitter.parsers").get_parser_configs()

parser_configs.norg_meta = {
  install_info = {
    url = "https://github.com/nvim-neorg/tree-sitter-norg-meta",
    files = {"src/parser.c"},
    branch = "main"
  }
}

parser_configs.norg_table = {
  install_info = {
    url = "https://github.com/nvim-neorg/tree-sitter-norg-table",
    files = {"src/parser.c"},
    branch = "main"
  }
}

require"nvim-treesitter.configs".setup {
  ensure_installed = {
    "r", "c", "cpp", "lua", "python", "julia", "bash", "fish", "latex", "bibtex", "yaml", "json",
    "norg_meta", "norg_table", "norg", "go", "scheme"
  },
  highlight = {enable = true},
  indent = {enable = false},
  -- rainbow = {enable = true}
}

