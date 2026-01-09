vim.pack.add({
	{ src = "https://github.com/folke/tokyonight.nvim" }
})

require("tokyonight").setup()

vim.cmd("colorscheme tokyonight")
