vim.keymap.set("i", "jk", "<ESC>", { silent = true })
vim.keymap.set({"v", "n"}, ";", ":", { noremap = true })
vim.keymap.set("n", "Q", "<CMD>qa<CR>", { noremap = true })
vim.keymap.set("n", "q", "<CMD>q<CR>", { noremap = true })

vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-l>", "<Right>")
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-k>", "<Up>")

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
