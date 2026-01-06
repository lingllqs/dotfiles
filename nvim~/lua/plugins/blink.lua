vim.pack.add({
	{ src = "https://github.com/saghen/blink.cmp", version = 'main' },
	{ src = "https://github.com/rafamadriz/friendly-snippets" },
})

require("blink.cmp").setup({
	keymap = { preset = "enter" },
	appearance = {
		nerd_font_variant = "mono",
	},
	sources = {
		default = { 'lsp', 'path', 'snippets', 'buffer' },
		providers = {
			snippets = {
				opts = { friendly_snippets = true }
			}
		}
    },
    fuzzy = { implementation = "prefer_rust_with_warning" }
})
