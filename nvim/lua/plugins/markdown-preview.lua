return {
  "iamcco/markdown-preview.nvim",
  config = function()
    vim.cmd([[
            let g:mkdp_browser = 'chromium'
            " nmap mk <Plug>MarkdownPreview
            " nmap ms <Plug>MarkdownPreviewStop
            nmap mk <Plug>MarkdownPreviewToggle
        ]])
  end,
  -- ft = "markdown",
  -- keys = {
  --   { "mk", "Plug>MarkdownPreviewToggle", mode = { "n" }, desc = "markdown preview toggle" },
  -- },
}
