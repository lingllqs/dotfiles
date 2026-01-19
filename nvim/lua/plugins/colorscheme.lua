vim.pack.add({
	{ src = "https://github.com/folke/tokyonight.nvim" },
	{ src = "https://github.com/lingllqs/gruber-darker.nvim"},
	{ src = "https://github.com/lingllqs/kongburusi.nvim"},
})

-- require("tokyonight").setup()
require("kongburusi").setup()
require("gruber-darker").setup()

vim.cmd.colorscheme("gruber-darker")
