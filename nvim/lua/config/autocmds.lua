-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.cmd([[
    augroup M
        autocmd!
        " autocmd BufNewFile,BufRead *.slint setfiletype slint
        autocmd FileType * set shiftwidth=4 tabstop=4
        autocmd FileType c,cpp :lua vim.b.autoformat = false
        autocmd BufEnter *.slint :setlocal filetype=slint
        autocmd BufEnter *.rs :setlocal filetype=rust
    augroup END
]])

--vim.api.nvim_create_autocmd("BufEnter", {
--    pattern = {"*.rs"},
--    callback = function()
--        vim.cmd[[setlocal filetype=rust]]
--    end
--})

vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- wrap and check for spell in text filetypes
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "gitcommit", "markdown" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = true
  end,
})

-- Auto create dir when saving a file, in case some intermediate directory does not exist
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  callback = function(event)
    if event.match:match("^%w%w+://") then
      return
    end
    local file = vim.loop.fs_realpath(event.match) or event.match
    vim.fn.mkdir(vim.fn.fnamemodify(file, ":p:h"), "p")
  end,
})
