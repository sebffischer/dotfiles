return {
	"zbirenbaum/copilot-cmp",
	event = "VimEnter",
	dependencies = {
		"zbirenbaum/copilot.lua",
	},
	-- Otherwise, setup() is not called
	config = true,
}
