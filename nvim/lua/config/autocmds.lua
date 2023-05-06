vim.cmd([[
    augroup mygrp
        autocmd!
        autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif
        autocmd InsertEnter * hi CursorLine ctermbg=235
        autocmd InsertLeave * hi CursorLine ctermbg=none

    augroup end
]])
