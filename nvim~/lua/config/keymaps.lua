vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set({"n", "v"}, ";", ":")

-- vim.keymap.set("n", "<leader>ts", "<CMD>set spell!<CR>")

vim.keymap.set("n", "<ESC>", "<CMD>nohlsearch<CR>")
vim.keymap.set({"n", "v"}, "<A-j>", "<CMD>move .+1<CR>")
vim.keymap.set({"n", "v"}, "<A-k>", "<CMD>move .-2<CR>")

vim.keymap.set("n", "<leader>bn", "<CMD>bnext<CR>", { desc = "Next Buffer" } )
vim.keymap.set("n", "<leader>bp", "<CMD>bprevious<CR>", { desc = "Prev Buffer" } )

vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.hl.on_yank({timeout = 200})
	end
})
