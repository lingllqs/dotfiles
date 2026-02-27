vim.bo.tabstop = 4
vim.bo.shiftwidth = 4

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
