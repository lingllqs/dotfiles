vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.cursorline = true
vim.opt.confirm = true
vim.opt.wrap = false
vim.opt.scrolloff = 10
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.list = true -- 显示 <Tab> 和 <EOL>
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
vim.opt.inccommand = "split"
vim.opt.clipboard = "unnamedplus"

vim.pack.add({
	{ src = "https://github.com/folke/tokyonight.nvim" },	
})

vim.cmd( "colorscheme tokyonight" )

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set({"n", "v"}, ";", ":")

vim.keymap.set("n", "<leader>ts", "<CMD>set spell!<CR>")
vim.keymap.set("n", "<ESC>", "<CMD>nohlsearch<CR>")
vim.keymap.set({"n", "v"}, "<ALT-j>", "<CMD>move .+1<CR>")

vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.hl.on_yank({timeout = 200})
	end
})
