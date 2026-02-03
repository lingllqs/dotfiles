vim.pack.add({
	{ src = "https://github.com/folke/snacks.nvim" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
})

require("snacks").setup({
	explorer = {
		enabled = true,
		window = {
			width = 20,
		},
		trash = true,
	},
	bigfile = { enabled = true },
})

vim.keymap.set("n", "<leader>e", function()
	Snacks.picker.explorer()
end, { desc = "file explorer" })
