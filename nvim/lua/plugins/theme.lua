return {
	{
		{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	},
	{
		{ "ellisonleao/gruvbox.nvim", priority = 1000 },
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd[[colorscheme catppuccin]]
		end,
        opts = {
            style = "storm",
        },
	},
}
