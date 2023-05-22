return {
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
    config = function ()
        vim.cmd([[
            let g:mkdp_browser = 'chromium'
            " nmap mk <Plug>MarkdownPreview
            " nmap ms <Plug>MarkdownPreviewStop
            nmap mk <Plug>MarkdownPreviewToggle
        ]])
    end,
    -- keys = {
    --     {"<F5>", "Plug>MarkdownPreview", mode = {"n"}, desc = "markdown preview toggle"},
    -- }
}
