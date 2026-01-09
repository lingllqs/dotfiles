vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set({"n", "v"}, ";", ":")

vim.keymap.set("n", "<leader>rs", "<CMD>restart<CR>", { desc = "Restart Nvim" })

-- vim.keymap.set("n", "<leader>ts", "<CMD>set spell!<CR>")

vim.keymap.set("n", "<ESC>", "<CMD>nohlsearch<CR>")

vim.keymap.set("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
vim.keymap.set("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
vim.keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
vim.keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
vim.keymap.set("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Focus Window To Left" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Focus Window To Right" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Focus Window To Down" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Focus Window To Up" })

vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.hl.on_yank({timeout = 200})
	end
})

vim.keymap.set("x", "<", "<gv")
vim.keymap.set("x", ">", ">gv")

vim.keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "Down", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Up", expr = true, silent = true })

vim.keymap.set("n", "0", ":call v:lua.MagicMove()<CR>", { noremap = true, silent = true })
function MagicMove()
	local first = 1
	local head = #vim.fn.getline(".") - #vim.fn.substitute(vim.fn.getline("."), "^\\s*", "", "G") + 1
	local before = vim.fn.col(".")
	vim.fn.execute(before == first and first ~= head and "norm! ^" or "norm! $")
	local after = vim.fn.col(".")
	if before == after then
		vim.fn.execute("norm! 0")
	end
end
