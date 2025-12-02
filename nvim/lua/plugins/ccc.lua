return {
	"uga-rosa/ccc.nvim",
	lazy = false,
	config = function()
		local ccc = require("ccc")
		ccc.setup({
			highlighter = {
				auto_enable = true,
				lsp = true,
			},
		})
	end,
	keys = {
		{ "<leader>cp", "<CMD>CccPick<CR>", desc = "color picker" },
	},
}
