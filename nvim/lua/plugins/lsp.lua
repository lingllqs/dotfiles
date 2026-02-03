vim.pack.add({
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
})

require("mason").setup()

vim.diagnostic.config({ virtual_text = true })

vim.lsp.config('rust_analyzer', {
	settings = {
		['rust-analyzer'] = {
			diagnostics = {
				enable = true,
			}
		}
	}
})

vim.lsp.config("clangd", {
	cmd = {
		"clangd",
		"--clang-tidy=true",
	},
	filetypes = { "c", "cpp", "objc", "objcpp" },
	root_markers = {
		".clang-format",
		".clangd",
		".clang-tidy",
		"compile_commands.json",
		"compile_flags.txt",
		"configure.ac", -- AutoTools
		".git",
	},
	capabilities = {
		textDocument = {
			completion = {
				editsNearCursor = true,
			},
		},
		offsetEncoding = { 'utf-8', 'utf-16' },
	},
})


vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "go to definition" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "go to declaration" })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "go to implementation" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Find references" })
vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "rename" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "lsp code action" })
vim.keymap.set("n", "<leader>cm", "<CMD>Mason<CR>", { desc = "spawn Mason" })
vim.keymap.set({ "n", "v" }, "<leader>cf", "<CMD>lua vim.lsp.buf.format()<CR>", { desc = "code format" })

vim.keymap.set("n", "[d", function()
	vim.diagnostic.jump({ wrap = true, count = -1 })
end, { desc = "prev diagnostic" })

vim.keymap.set("n", "]d", function()
	vim.diagnostic.jump({ wrap = true, count = 1 })
end, { desc = "next diagnostic" })

vim.lsp.enable({ "clangd", "lua_ls", "rust_analyzer" })
