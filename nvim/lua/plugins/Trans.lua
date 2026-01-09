vim.pack.add({
	{ src = "https://github.com/lingllqs/Trans.nvim" },
	{ src = "https://github.com/kkharji/sqlite.lua" },
})

require("Trans").setup({
	require("Trans").install()
})
vim.keymap.set( "n", "<leader>mm",  "<Cmd>Translate<CR>", {desc = "󰊿 Translate" })
vim.keymap.set( "n", "<leader>mk",  "<Cmd>TransPlay<CR>", {desc = " Auto Play" })
vim.keymap.set( "n", "<leader>mi", "<Cmd>TranslateInput<CR>", {desc = "󰊿 Translate From Input"} )
