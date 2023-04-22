return {
    'voldikss/vim-floaterm',
    config = function ()
        vim.cmd([[
            nnoremap   <silent>   <F7>    :FloatermNew<CR>
            tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew<CR>
            nnoremap   <silent>   <F8>    :FloatermPrev<CR>
            tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
            nnoremap   <silent>   <F9>    :FloatermNext<CR>
            tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
            nnoremap   <silent>   <c-\>   :FloatermToggle<CR>
            tnoremap   <silent>   <c-\>   <C-\><C-n>:FloatermToggle<CR>
        ]])
    end
}
