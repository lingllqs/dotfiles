vim.keymap.set("i", "jk", "<ESC>", { silent = true })
vim.keymap.set({ "v", "n" }, ";", ":", { noremap = true })
vim.keymap.set("n", "Q", "<CMD>qa<CR>", { noremap = true })
vim.keymap.set("n", "q", "<CMD>q<CR>", { noremap = true })
vim.keymap.set("n", "<bs>", "ciw", { noremap = true })
vim.keymap.set({ "n", "v", "i" }, "<C-s>", "<ESC><CMD>w<CR>", { noremap = true })

vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-l>", "<Right>")
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-k>", "<Up>")

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
-- vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
