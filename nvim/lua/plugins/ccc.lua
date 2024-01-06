return {
    -- 预览 rgb 颜色
    "uga-rosa/ccc.nvim",
    config = function()
        require("ccc").setup({
            highlighter = {
                auto_enable = true,
                lsp = true,
            },
        })
    end,
}
