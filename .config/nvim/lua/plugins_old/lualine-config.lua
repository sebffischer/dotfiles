require("lualine").setup {
  options = {
    -- theme = "onedark",
    -- theme = "ayu",
    globalstatus = true
  },
  sections = {lualine_c = {{"filename", path = 1}}} -- relative file name
}
