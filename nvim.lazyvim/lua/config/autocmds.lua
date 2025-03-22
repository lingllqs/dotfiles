-- 复制文本时高亮
vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("highlight_on_yank", {}),
  desc = "briefly highlight yank text",
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "term://*",
  command = [[startinsert]],
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "*.md", "*.txt" },
  command = "setlocal wrap",
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile", "FileType" }, {
  pattern = { "lua" },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.softtabstop = 2
  end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile", "FileType" }, {
  callback = function()
    vim.g.autoformat = false
  end,
})

vim.cmd([[
    augroup M 
    autocmd!
    autocmd BufEnter *.slint :setlocal filetype=slint
    autocmd BufEnter *.rs :setlocal filetype=rust
    augroup END
]])
