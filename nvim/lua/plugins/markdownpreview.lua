return {
  'iamcco/markdown-preview.nvim',
  lazy = true,
  build = "cd app && yarn install",
  ft = "markdown",
  config = function()
    vim.g.mkdp_browser = 'brave-nightly'
    vim.g.mkdp_auto_close = 1
  end,
}
