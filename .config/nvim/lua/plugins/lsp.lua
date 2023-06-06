return {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
        autoformat = false,
        ---@type lspconfig.options
        servers = {
            -- pyright will be automatically installed with mason and loaded with lspconfig
            pyright = {},
            r_language_server = {},
            -- remark_ls = {},
            -- ltex = {},
            sumneko_lua = {},
            clangd = {},
        }
    },
    keys = {
        { "<leader>li", "<cmd>LspInfo<cr>", { desc = "Connected Language Servers" } },
        { "<leader>lk", "<cmd>lua vim.lsp.buf.signature_help()<cr>", { desc = "Signature Help" } },
        { "<leader>lK", "<cmd>Lspsaga hover_doc<cr>", { desc = "Hover Commands" } },
        { "<leader>lw", "<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>", { desc = "Add Workspace Folder" } },
        { "<leader>lW", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>", { desc = "Remove Workspace Folder" } },
        { "<leader>ll", "<cmd>Telescope diagnostics<cr>", { desc = "List diagnostics" } },
        {
            "<leader>lf",
            "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>",
            { desc = "List Workspace Folders" },
        },
        { "<leader>lt", "<cmd>lua vim.lsp.buf.type_definition()<cr>", { desc = "Type Definition" } },
        { "<leader>ld", "<cmd>lua vim.lsp.buf.definition()<cr>", { desc = "Go To Definition" } },
        { "<leader>lD", "<cmd>lua vim.lsp.buf.declaration()<cr>", { desc = "Go To Declaration" } },
        { "<leader>lr", "<cmd>lua vim.lsp.buf.references()<cr>", { desc = "References" } },
        { "<leader>lR", "<cmd>Lspsaga rename<cr>", { desc = "Rename" } },
        { "<leader>la", "<cmd>Lspsaga code_action<cr>", { desc = "Code Action" } },
        { "<leader>le", "<cmd>Lspsaga show_line_diagnostics<cr>", { desc = "Show Line Diagnostics" } },
        { "<leader>ln", "<cmd>Lspsaga diagnostic_jump_next<cr>", { desc = "Go To Next Diagnostic" } },
        { "<leader>ln", "<cmd>Lspsaga diagnostic_jump_next<cr>", { desc = "Go To Next Diagnostic" } },
        { "<leader>lN", "<cmd>Lspsaga diagnostic_jump_prev<cr>", { desc = "Go To Previous Diagnostic" } },
    },
}
