vim.api.nvim_set_keymap("i",        "jk",  	"<esc>",        { noremap = true, silent = true })
vim.api.nvim_set_keymap("n",        ";",   	":",            { noremap = true })
vim.api.nvim_set_keymap("i",        "<c-u>", "<esc>viwUea", {noremap = true, silent = true })
vim.api.nvim_set_keymap("v",        ";",   	":",            { noremap = true })
vim.api.nvim_set_keymap("n",        "q",   	":q<cr>",       { noremap = true, silent = true })
vim.api.nvim_set_keymap("n",        "j",   	"gj",           { noremap = true, silent = true })
vim.api.nvim_set_keymap("n",        "k",   	"gk",           { noremap = true, silent = true })
vim.api.nvim_set_keymap("n",        "gj",  	"j",           	{ noremap = true, silent = true })
vim.api.nvim_set_keymap("n",        "gk",  	"k",           	{ noremap = true, silent = true })
vim.api.nvim_set_keymap("n",        "<leader><cr>", ":nohl<cr>", {noremap = tree, silent = true})

-- vim.api.nvim_set_keymap("n",        "S",    "<cmd>TranslateW<cr>", {noremap = true})
-- vim.api.nvim_set_keymap("v",        "S",    "<cmd>TranslateW<cr>", {noremap = true})

vim.api.nvim_set_keymap( 'n', '<m-up>',      ':m .-2<cr>',       { noremap = true, silent = true } )
vim.api.nvim_set_keymap( 'n', '<m-down>',    ':m .+1<cr>',       { noremap = true, silent = true } )
vim.api.nvim_set_keymap( 'i', '<m-up>',      '<Esc>:m .-2<cr>i', { noremap = true, silent = true } )
vim.api.nvim_set_keymap( 'i', '<m-down>',    '<Esc>:m .+1<cr>i', { noremap = true, silent = true } )
vim.api.nvim_set_keymap( 'v', '<m-up>',      ":m '<-2<cr>gv",    { noremap = true, silent = true } )
vim.api.nvim_set_keymap( 'v', '<m-down>',    ":m '>+1<cr>gv",    { noremap = true, silent = true } )



vim.api.nvim_set_keymap("n",        "<bs>", "viws", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n",        "<leader>|",    "<cmd>Tab /|<cr>", {noremap = true})
vim.api.nvim_set_keymap("n",        "<leader>=",    "<cmd>Tab /=<cr>", {noremap = true})

vim.api.nvim_set_keymap( 'v', 'T',           ':call v:lua.MagicToggleHump(v:true)<CR>',          { noremap = true, silent = true } )
vim.api.nvim_set_keymap( 'v', 't',           ':call v:lua.MagicToggleHump(v:false)<CR>',         { noremap = true, silent = true } )


vim.cmd([[
    nnoremap <silent> <leader>/ :Tab /\/\/<cr>
]])

vim.api.nvim_set_keymap("n",        "0",    "<cmd>call v:lua.MagicMove()<cr>", { noremap = true, silent = true })

function MagicMove()
    local first = 1
    local head = #vim.fn.getline('.') - #vim.fn.substitute(vim.fn.getline('.'), '^\\s*', '', 'G') + 1
    local before = vim.fn.col('.')
    vim.fn.execute(before == first and first ~= head and 'norm! ^' or 'norm! $')
    local after = vim.fn.col('.')
    if before == after then
        vim.fn.execute('norm! 0')
    end
end

function MagicToggleHump(upperCase)
    vim.fn.execute('normal! gv"tx')
    local w = vim.fn.getreg('t')
    local toHump = w:find('_') ~= nil
    if toHump then
        w = w:gsub('_(%w)', function(c) return c:upper() end)
    else
        w = w:gsub('(%u)', function(c) return '_' .. c:lower() end)
    end
    if w:sub(1, 1) == '_' then w = w:sub(2) end
    if upperCase then w = w:sub(1,1):upper() .. w:sub(2) end
    vim.fn.setreg('t', w)
    vim.fn.execute('normal! "tP')
end


