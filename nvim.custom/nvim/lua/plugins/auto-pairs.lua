vim.pack.add({
	-- { src = "https://github.com/jiangmiao/auto-pairs" },
	{ src = "https://github.com/nvim-mini/mini.nvim" },
})
-- vim.g.AutoPairsFlyMode = 1
-- vim.g.AutoPairsShortcutBackInsert = "<M-b>"

require("mini.pairs").setup()
require("mini.statusline").setup()
