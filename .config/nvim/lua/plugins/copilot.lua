return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	opts = {
		-- this has to be set to true for the plugin to work (see README.md of copilot.lua)
		suggestion = { enabled = false },
		panel = { enabled = false },
	},
}
