return {
	"ahmedkhalf/project.nvim",
	lazy = false,
	config = function()
		require("project_nvim").setup({
			detection_methods = { "pattern" },
			patterns = { ".projectroot", ".git", ".svn", "Makefile", "DESCRIPTION" },
			scope_chdir = "tab",
		})
	end,
}
