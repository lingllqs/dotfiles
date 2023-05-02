return {
    "voldikss/vim-translator",
    lazy = false,
    keys = {
        { "mm", ":TranslateW<cr>", mode = { "n", "v" }, desc = "TranslateW" },
    },
    config = function()
        vim.cmd([[
            let g:translator_source_language = 'zh'
            let g:translator_default_engines = ['youdao', 'haici', 'bing']
            let g:translator_history_enable = v:true
            ]])
    end,
}

-- return {
--     'neoclide/coc.nvim',
--     branch = "release",
--     config = function()
--         vim.cmd([[
--             nnoremap <silent> mm <Plug>(coc-translator-p)
--             vnoremap <silent> mm <Plug>(coc-translator-pv)
--             nnoremap <silent> me <Plug>(coc-translator-e)
--             vnoremap <silent> me <Plug>(coc-translator-ev)
--             nnoremap <silent> mr <Plug>(coc-translator-r)
--             vnoremap <silent> mr <Plug>(coc-translator-rv)
--             ]])
--     end,
-- }
