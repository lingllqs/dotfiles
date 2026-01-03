vim.pack.add({
	{ src = "https://github.com/catppuccin/nvim" }
})

require("catppuccin").setup()

vim.cmd("colorscheme catppuccin")
