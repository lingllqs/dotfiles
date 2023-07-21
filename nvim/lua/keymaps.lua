local map = vim.keymap.set

map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

map("n", "<C-h>", "<C-w>h", { desc = "Go to left window", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })

map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

map("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
map("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
map("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

map("n", ";", ":", { noremap = true })
map("v", ";", ":", { noremap = true })
map("i", "jk", "<esc>", { noremap = true, silent = true })
map("n", "q", ":q<cr>", { noremap = true, silent = true })
-- map("n", "<leader><cr>", ":nohl<cr>", { noremap = true, silent = true })
map("i", "<c-u>", "<esc>viwUea", { noremap = true, silent = true })
map("n", "<bs>", "viwc", { noremap = true, silent = true })

map("n", "<A-Tab>", "<cmd>bNext<CR>")
map("n", "<leader>bc", "<cmd>bd<CR>")

-- map("v", "J", ":m '>+1<CR>gv=gv")
-- map("v", "K", ":m '<-2<CR>gv=gv")

map({ "v", "n" }, "<leader>y", "\"+y")


vim.cmd([[
    nnoremap m/ :Tab /\/\/<cr>
    nnoremap m- :Tab /--<cr>
    nnoremap m* :Tab /\/\*<cr>
    nnoremap m= :Tab /=<cr>
    nnoremap m" :Tab /"<cr>
    nnoremap m: :Tab /:<cr>
    nnoremap m; :Tab /;<cr>
    nnoremap m# :Tab /#<cr>
    nnoremap m\| :Tab /\|<cr>
]])

map("n", "0", "<cmd>call v:lua.MagicMove()<cr>", { noremap = true, silent = true })
map('v', 'T', ':call v:lua.MagicToggleHump(v:true)<CR>', { noremap = true, silent = true })
map('v', 't', ':call v:lua.MagicToggleHump(v:false)<CR>', { noremap = true, silent = true })

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

