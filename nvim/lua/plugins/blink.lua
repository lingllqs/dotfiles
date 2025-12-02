return { -- Autocompletion
	"saghen/blink.cmp",
	event = "VimEnter",
	version = "1.*",
	dependencies = {
		-- Snippet Engine
		"rafamadriz/friendly-snippets",
		"folke/lazydev.nvim",
	},
	opts = {
		keymap = {
			preset = "enter", -- enter 键确认选择
		},

		appearance = {
			-- mono 对应 Nerd Font Mono, normal 对应 Nerd Font, 为了使 icons 对齐
			nerd_font_variant = "mono",
		},

		completion = {
			menu = {
				enabled = true,
				draw = {
					padding = 1,
				},
				border = "rounded",
				scrollbar = false,
			},
			documentation = { auto_show = false, auto_show_delay_ms = 500 },
			ghost_text = {
				enabled = false,
			},
		},

		sources = {
			default = { "buffer", "lsp", "path", "snippets", "lazydev" },
			providers = {
				lazydev = { module = "lazydev.integrations.blink", score_offset = 100 },
			},
		},

		snippets = {
			preset = "default",
			-- opts = {
			-- 	search_path = { vim.fn.stdpath("config") .. "/snippets" },
			-- },
		},

		-- See :h blink-cmp-config-fuzzy for more information
		fuzzy = { implementation = "prefer_rust_with_warning" },

		-- Shows a signature help window while you type arguments for a function
		signature = { enabled = true },
	},
}
