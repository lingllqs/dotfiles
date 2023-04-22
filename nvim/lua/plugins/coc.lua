return {
    'neoclide/coc.nvim',
    branch = "release",
    config = function()
        vim.opt.backup = false
        vim.opt.writebackup = false
        vim.opt.updatetime = 300
        vim.opt.signcolumn = "yes"


        function vim.map(maps)
            for _, map in pairs(maps) do
                vim.api.nvim_set_keymap(map[1], map[2], map[3], map[4])
            end
        end


        vim.g.coc_global_extensions = {
            'coc-marketplace',
            '@yaegassy/coc-volar',
            'coc-tsserver',
            'coc-json',
            'coc-html', 'coc-css',
            'coc-clangd',
            'coc-go',
            'coc-sumneko-lua',
            'coc-vimlsp',
            'coc-sh', 'coc-db',
            'coc-pyright',
            'coc-toml', '@nomicfoundation/coc-solidity',
            'coc-prettier',
            'coc-snippets', 'coc-pairs', 'coc-word',
            'coc-translator',
            'coc-git',
            'coc-rust-analyzer',
        }
        vim.cmd("command! -nargs=? Fold :call CocAction('fold', <f-args>)")
        vim.cmd("hi! link CocPum Pmenu")
        vim.cmd("hi! link CocMenuSel PmenuSel")
        vim.map({
            { 'n', '<leader>rn', '<Plug>(coc-rename)', {silent = true} },
            { 'n', 'gd', '<Plug>(coc-definition)', {silent = true} },
            { 'n', 'gy', '<Plug>(coc-type-definition)', {silent = true} },
            { 'n', 'gi', '<Plug>(coc-implementation)', {silent = true} },
            { 'n', 'gr', '<Plug>(coc-references)', {silent = true} },
            { 'x', 'if', '<Plug>(coc-funcobj-i)', {silent = true} },
            { 'o', 'if', '<Plug>(coc-funcobj-i)', {silent = true} },
            { 'x', 'af', '<Plug>(coc-funcobj-a)', {silent = true} },
            { 'o', 'af', '<Plug>(coc-funcobj-a)', {silent = true} },
            { 'x', 'ic', '<Plug>(coc-classobj-i)', {silent = true} },
            { 'o', 'ic', '<Plug>(coc-classobj-i)', {silent = true} },
            { 'x', 'ac', '<Plug>(coc-classobj-a)', {silent = true} },
            { 'o', 'ac', '<Plug>(coc-classobj-a)', {silent = true} },
            { 'n', 'K', ':call CocAction("doHover")<cr>', {silent = true} },
            { 'i', '<c-f>', "coc#pum#visible() ? '<c-y>' : '<c-f>'", {silent = true, expr = true} },
            { 'i', '<TAB>', "coc#pum#visible() ? coc#pum#next(1) : col('.') == 1 || getline('.')[col('.') - 2] =~# '\\s' ? \"\\<TAB>\" : coc#refresh()", {silent = true, noremap = true, expr = true} },
            { 'i', '<s-tab>', "coc#pum#visible() ? coc#pum#prev(1) : \"\\<s-tab>\"", {silent = true, noremap = true, expr = true} },
            { 'i', '<cr>', "coc#pum#visible() ? coc#pum#confirm() : \"\\<c-g>u\\<cr>\\<c-r>=coc#on_enter()\\<cr>\"", {silent = true, noremap = true, expr = true} },
            { 'i', '<c-y>', "coc#pum#visible() ? coc#pum#confirm() : '<c-y>'", {silent = true, noremap = true, expr = true} },
            { 'n', '<F3>', ":silent CocRestart<cr>", {silent = true, noremap = true} },
            { 'n', '<F4>', "get(g:, 'coc_enabled', 0) == 1 ? ':CocDisable<cr>' : ':CocEnable<cr>'", {silent = true, noremap = true, expr = true} },
            { 'n', '<F9>', ":CocCommand snippets.editSnippets<cr>", {silent = true, noremap = true} },
            { 'n', '<c-e>', ":CocList --auto-preview diagnostics<cr>", {silent = true} },
            { 'n', 'mm', "<Plug>(coc-translator-p)", {silent = true} },
            { 'v', 'mm', "<Plug>(coc-translator-pv)", {silent = true} },
            -- { 'n', '(', "<Plug>(coc-git-prevchunk)", {silent = true} },
            -- { 'n', ')', "<Plug>(coc-git-nextchunk)", {silent = true} },
            -- { 'n', 'C', "get(b:, 'coc_git_blame', '') ==# 'Not committed yet' ? \"<Plug>(coc-git-chunkinfo)\" : \"<Plug>(coc-git-commit)\"", {silent = true, expr = true} },
            -- { 'n', '\\g', ":call coc#config('git.addGBlameToVirtualText',  !get(g:coc_user_config, 'git.addGBlameToVirtualText', 0)) | call nvim_buf_clear_namespace(bufnr(), -1, line('.') - 1, line('.'))<cr>", {silent = true} },
            -- { 'x', '=', 'CocHasProvider("formatRange") ? "<Plug>(coc-format-selected)" : "="', {silent = true, noremap = true, expr = true}},
            -- { 'n', '=', 'CocHasProvider("formatRange") ? "<Plug>(coc-format-selected)" : "="', {silent = true, noremap = true, expr = true}},
        })
    end
}

    --     local keyset = vim.keymap.set
    --     -- Autocomplete
    --     function _G.check_back_space()
    --         local col = vim.fn.col('.') - 1
    --         return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
    --     end
    --
    --     -- Use Tab for trigger completion with characters ahead and navigate
    --     -- NOTE: There's always a completion item selected by default, you may want to enable
    --     -- no select by setting `"suggest.noselect": true` in your configuration file
    --     -- NOTE: Use command ':verbose imap <tab>' to make sure Tab is not mapped by
    --     -- other plugins before putting this into your config
    --     local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
    --     -- keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
    --     -- keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)
    --
    --     -- Make <CR> to accept selected completion item or notify coc.nvim to format
    --     -- <C-g>u breaks current undo, please make your own choice
    --     keyset("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)
    --
    --     -- Use <c-j> to trigger snippets
    --     keyset("i", "<c-j>", "<Plug>(coc-snippets-expand-jump)")
    --     -- Use <c-space> to trigger completion
    --     keyset("i", "<c-space>", "coc#refresh()", {silent = true, expr = true})
    --
    --     -- Use `[g` and `]g` to navigate diagnostics
    --     -- Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
    --     keyset("n", "[g", "<Plug>(coc-diagnostic-prev)", {silent = true})
    --     keyset("n", "]g", "<Plug>(coc-diagnostic-next)", {silent = true})
    --
    --     -- GoTo code navigation
    --     keyset("n", "gd", "<Plug>(coc-definition)", {silent = true})
    --     keyset("n", "gy", "<Plug>(coc-type-definition)", {silent = true})
    --     keyset("n", "gi", "<Plug>(coc-implementation)", {silent = true})
    --     keyset("n", "gr", "<Plug>(coc-references)", {silent = true})
    --
    --
    --     -- Use K to show documentation in preview window
    --     function _G.show_docs()
    --         local cw = vim.fn.expand('<cword>')
    --         if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
    --             vim.api.nvim_command('h ' .. cw)
    --         elseif vim.api.nvim_eval('coc#rpc#ready()') then
    --             vim.fn.CocActionAsync('doHover')
    --         else
    --             vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
    --         end
    --     end
    --     keyset("n", "K", '<CMD>lua _G.show_docs()<CR>', {silent = true})
    --
    --
    --     -- Highlight the symbol and its references on a CursorHold event(cursor is idle)
    --     vim.api.nvim_create_augroup("CocGroup", {})
    --     vim.api.nvim_create_autocmd("CursorHold", {
    --         group = "CocGroup",
    --         command = "silent call CocActionAsync('highlight')",
    --         desc = "Highlight symbol under cursor on CursorHold"
    --     })
    --
    --
    --     -- Symbol renaming
    --     keyset("n", "<leader>rn", "<Plug>(coc-rename)", {silent = true})
    --
    --
    --     -- Formatting selected code
    --     keyset("x", "<leader>cf", "<Plug>(coc-format-selected)", {silent = true})
    --     keyset("n", "<leader>cf", "<Plug>(coc-format-selected)", {silent = true})
    -- end,
