return {
	"uga-rosa/ccc.nvim",
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
