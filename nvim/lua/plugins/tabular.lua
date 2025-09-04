return {
    {
        "Kicamon/markdown-table-mode.nvim",
        ft = 'markdown',
        config = function()
            require("markdown-table-mode").setup()
        end,
    },
    {
        "lingllqs/tabular",
        config = function()
            vim.cmd([[
                nnoremap <silent> <leader>m\| :Tabularize /\|<cr>
                nnoremap <silent> <leader>m" :Tabularize /"<cr>
                nnoremap <silent> <leader>m' :Tabularize /'<cr>
                nnoremap <silent> <leader>m# :Tabularize /#<cr>
                nnoremap <silent> <leader>m/ :Tabularize /\/\/<cr>
            ]])
        end
    },
}
