return {
    "JuanZoran/Trans.nvim",
    dependencies = { "kkharji/sqlite.lua" },
    build = function()
        require("Trans").install()
    end,
    keys = {
        { "<leader>mm", mode = { "n", "x" }, "<Cmd>Translate<CR>", desc = " Translate" },
        { "<leader>mk", mode = { "n", "x" }, "<Cmd>TransPlay<CR>", desc = " Auto Play" },
        { "<leader>mi", "<Cmd>TranslateInput<CR>", desc = " Translate From Input" },
    },
    opts = {
        -- your configuration there
        theme = "tokyonight",
    },
}
