require("project_nvim").setup({
  detection_methods = { "pattern" },
  patterns = { "DESCRIPTION", ".git", "init.lua" },
  silent_chdir = false,
})
require("telescope").load_extension("projects")
