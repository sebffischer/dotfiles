local function file_exists(name)
	local f = io.open(name, "r")
	return f ~= nil and io.close(f)
end

local function create_test(name)
	local name_provided = name == nil
	name = name or vim.fn.expand("%:t")

	local wd = vim.fn.getcwd()
	local path = wd .. "/tests/testthat/test_" .. name

	local dontedit = file_exists(path)

	if not string.find(name, "%.R$") then
		if name_provided then
			print("Adding '.R' extension.")
			path = path .. ".R"
		else
			error("Current file is not an R file.")
		end
	end

	vim.api.nvim_command("e " .. path)

	if not dontedit then
		local name_noext = string.gsub(name, "%.R$", "")
		vim.api.nvim_buf_set_text(0, 0, 0, 0, 0, { 'test_that("' .. name_noext .. ' works", {', "  ", "})" })
		vim.cmd("startinsert")
		vim.api.nvim_win_set_cursor(0, { 2, 3 })
	end

	return nil
end

return {
	"jalvesaq/Nvim-R",
	cmd = { "<leader>rr" },
	branch = "stable",
	dependencies = { "mllg/vim-devtools-plugin" },
	keys = {
		{ "<leader>rs", "<cmd>RSetupTest<cr>", desc = "Setup Test" },
		{ "<leader>rr", "<Plug>RStart", desc = "Run R" },
		{ "<leader>rl", "<cmd>wa<cr><cmd>RLoadPackage<cr>", desc = "Load R package" },
		{ "<leader>rd", "<cmd>RDocumentPackage<cr>", desc = "Document package" },
		{ "<leader>ri", "<cmd>RInstallPackage<cr>", desc = "Install package" },
		{ "<leader>rt", "<cmd>RTestPackage<cr>", "Test package" },
		{ "<leader>rc", "<cmd>RCheckPackage<cr>", desc = "Check package" },
		{ "<leader>re", "<cmd>lua create_test()<cr>", "Edit (or create) Test File" },
		{ "<A-p>", "%>>%", mode = "i" },
		{ "<A-r>", "<Plug>RDSendLine" },
		{ "<A-r>", "<Plug>RDSendSelection", mode = "v" },
	},
}
