vim.api.nvim_set_keymap("i",        "jk",  	"<esc>",        { noremap = true, silent = true })
vim.api.nvim_set_keymap("n",        ";",   	":",            { noremap = true })
vim.api.nvim_set_keymap("v",        ";",   	":",            { noremap = true })
vim.api.nvim_set_keymap("n",        "q",   	":q<cr>",       { noremap = true, silent = true })
vim.api.nvim_set_keymap("n",        "j",   	"gj",           { noremap = true, silent = true })
vim.api.nvim_set_keymap("n",        "k",   	"gk",           { noremap = true, silent = true })
vim.api.nvim_set_keymap("n",        "gj",  	"j",           	{ noremap = true, silent = true })
vim.api.nvim_set_keymap("n",        "gk",  	"k",           	{ noremap = true, silent = true })

vim.api.nvim_set_keymap("n",        "S",    "<cmd>TranslateW<cr>", {noremap = true})
vim.api.nvim_set_keymap("v",        "S",    "<cmd>TranslateW<cr>", {noremap = true})

vim.api.nvim_set_keymap("n",        "<leader>|",    "<cmd>Tab /|<cr>", {noremap = true})
vim.api.nvim_set_keymap("n",        "<leader>=",    "<cmd>Tab /=<cr>", {noremap = true})
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


