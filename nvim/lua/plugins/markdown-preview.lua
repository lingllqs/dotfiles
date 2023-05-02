return {
    "iamcco/markdown-preview.nvim",
    config = function ()
        vim.cmd([[
            let g:mkdp_browser = '/usr/bin/chromium'
        ]])
    end,
    keys = {
        {"mk", "<cmd>MarkdownPreviewToggle<cr>", mode = {"n"}, desc = "markdown preview toggle"},
    }
}
