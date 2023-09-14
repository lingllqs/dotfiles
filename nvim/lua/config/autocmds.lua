-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.cmd([[
    augroup M
        autocmd!
        " autocmd BufNewFile,BufRead *.slint setfiletype slint
        autocmd FileType c,cpp,python set shiftwidth=4 tabstop=4
        autocmd FileType c,cpp :lua vim.b.autoformat = false
        autocmd BufEnter *.slint :setlocal filetype=slint
    augroup END
]])

-- vim.api.nvim_create_autocmd({ "BufEnter" }, {
--   pattern = { "*.c", "*.h", "*.cpp", "*.hpp" },
--   callback = function()
--     vim.b.autoformat = false
--     vim.opt.shiftwidth = 4
--     vim.opt.tabstop = 4
--   end,
-- })
