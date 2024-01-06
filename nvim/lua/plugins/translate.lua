return {
    "JuanZoran/Trans.nvim",
    dependencies = { "kkharji/sqlite.lua" },
    build = function()
        require("Trans").install()
    end,
    keys = {
        { "mm", mode = { "n", "x" }, "<Cmd>Translate<CR>", desc = " Translate" },
        { "mk", mode = { "n", "x" }, "<Cmd>TransPlay<CR>", desc = " Auto Play" },
        { "mi", "<Cmd>TranslateInput<CR>", desc = " Translate From Input" },
    },
    opts = {
        -- your configuration there
        theme = "dracula",
    },
}
