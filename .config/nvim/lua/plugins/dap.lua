return {
    "mfussenegger/nvim-dap",
    lazy = false,
    config = function()
        local dap = require("dap")

        dap.adapters.r = {
            type = "server",
            port = 18721, -- needs to match `debugadapter::run()`'s `port` argument
        }

        dap.configurations.r = {
            {
                type = "r",
                request = "attach",
                name = "Attach session",
            },
        }
    end,
}
