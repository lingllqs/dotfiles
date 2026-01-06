vim.pack.add{
	{ src = 'https://github.com/neovim/nvim-lspconfig' },
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/mason-org/mason-lspconfig.nvim" }
}

require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "rust_analyzer", "clangd" }
})

vim.keymap.set("n", "<leader>cm", "<CMD>Mason<CR>", { desc = "Spawn Mason" })
