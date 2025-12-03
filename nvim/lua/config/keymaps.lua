vim.keymap.set("i", "jk", "<ESC>", { silent = true })
vim.keymap.set({ "v", "n" }, ";", ":", { noremap = true })
-- vim.keymap.set("n", "Q", "<CMD>qa<CR>", { noremap = true })
vim.keymap.set("n", "q", "<CMD>q<CR>", { noremap = true })
vim.keymap.set("n", "<bs>", "ciw", { noremap = true })
vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })
vim.keymap.set("n", "<leader>fn", "<CMD>enew<CR>", { desc = "New file" })

vim.keymap.set("x", "<", "<gv")
vim.keymap.set("x", ">", ">gv")

vim.keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "Down", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Up", expr = true, silent = true })

vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-l>", "<Right>")
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-k>", "<Up>")

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Focus to the upper window" })

vim.keymap.set("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
vim.keymap.set("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
vim.keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
vim.keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
vim.keymap.set("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

-- vim.keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
-- vim.keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
-- vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
-- vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
-- vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

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
