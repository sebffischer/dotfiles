-- if vim.g.snippets ~= "luasnip" then return end
local ls = require "luasnip"
local types = require "luasnip.util.types"
local s = ls.s -- snippet creator
local fmt = require("luasnip.extras.fmt").fmt
local i = ls.insert_node
-- local rep = require("luasnip.extras").rep

-- local r6 =
--   "R6Class($1,\n inherit = $2,\n  public = list(\n    initialize = function($0) {\n    }\n  )\n)"

ls.config.set_config {
  -- this tells lua to keep the last snippet around
  -- you can jump into it even if you are outside the selection
  history = true,
  -- Text upates as we write --> dynamic snippets
  updateevents = "TextChanged,TextChangedI",
  enable_autosnippets = true,
  -- crazy higlights (luasnip video 3 by TJ)
  -- ext_opts = {
  --   [types.choiceNode] = {
  --     active =
  --   }
  -- }
}

-- LuaFormatter off
local R6_string =
  'R6Class("{}",\n' ..
  '  inherit = "{}",\n' ..
  '  public = list(\n' ..
  '    initialize = function({}) {{ \n' ..
  '      {}\n' ..
  '    \n' ..
  '  )\n' ..
  ')'
R6_nodes = {
  i(1, "class"),
  i(2, "super"),
  i(3, "aaa"),
  i(4, "aaa")
}
-- LuaFormatter on


local R_string =
  '```{r, "{}"}\n' ..
  '"{}"\n' ..
  '```'

local R_nodes = {
  i(1, "chunk-name"),
  i(2, "")
}


ls.snippets = {
  all = {
    s("R6", fmt(R6_string, R6_nodes))
  }
}

