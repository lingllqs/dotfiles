vim.cmd([[
    augroup mygrp
        autocmd!
        autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif
        autocmd InsertEnter * hi CursorLine ctermbg=235
        autocmd InsertLeave * hi CursorLine ctermbg=none
        autocmd Filetype *.rs setlocal filetype=rust
        autocmd Filetype * :CccHighlighterEnable
        autocmd Filetype css,html,c,cpp,make setlocal shiftwidth=4 tabstop=4 expandtab
        autocmd Filetype Python setlocal shiftwidth=4 tabstop=4 expandtab

    augroup end
]])

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "c" },
  callback = function()
    vim.b.autoformat = false
  end,
})
