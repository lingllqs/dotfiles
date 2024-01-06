return {
    "folke/persistence.nvim",
    event = "BufReadPre", -- this will only start session saving when an actual file was opened
    opts = {
        -- add any custom options here
    },
    keys = {
        { "<leader>qs", [[<cmd>lua require("persistence").load()<cr>]] },
        { "<leader>ql", [[<cmd>lua require("persistence").load({ last = true })<cr>]] },
        { "<leader>qd", [[<cmd>lua require("persistence").stop()<cr>]] },
    },
    config = true,
}
