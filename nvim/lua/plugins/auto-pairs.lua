return {
	{
		"jiangmiao/auto-pairs",
		enabled = false,
		config = function()
			vim.g.AutoPairsFlyMode = 1
			vim.g.AutoPairsShortcutBackInsert = "<M-b>"
		end,
	},
}
