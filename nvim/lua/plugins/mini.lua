vim.pack.add({
	-- { src = "https://github.com/jiangmiao/auto-pairs" },
	{ src = "https://github.com/nvim-mini/mini.nvim" },
})
-- vim.g.AutoPairsFlyMode = 1
-- vim.g.AutoPairsShortcutBackInsert = "<M-b>"

require("mini.pairs").setup()
require("mini.statusline").setup()
-- require("mini.pick").setup()
-- require("mini.files").setup()
-- require("mini.icons").setup()
--
-- vim.keymap.set("n", "<leader>e", "<CMD>lua MiniFiles.open()<CR>", { desc = "打开目录树" })
