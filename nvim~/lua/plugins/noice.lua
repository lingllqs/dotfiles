vim.pack.add({
	{ src = "https://github.com/folke/noice.nvim" },
	{ src = "https://github.com/MunifTanjim/nui.nvim" },
	{ src = "https://github.com/rcarriga/nvim-notify" },
})

require("noice").setup({
	views = {
		cmdline_popup = { 
			position = {
				row = "20%",
				col = "50%",
			},
			border = { style = "rounded" },
		},
		popupmenu = {
			position = "auto",
			size = { width = 60, height = 10 },
			border = { style = "rounded" },
		},
		notify = {
			-- position = { row = "80%", col = "70%" },
			anchor = "top-right",
			size = {
				min_height = 3,
			}
		},
		messages = {
			size = {
				min_height = 3,
			}
		}
	}
})
