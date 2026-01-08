vim.pack.add({
	{ src = "https://github.com/folke/snacks.nvim" },
})

require("snacks").setup({
	explorer = { enabled = true },
})

vim.keymap.set("n", "<leader>e", function() Snacks.picker.explorer() end, { desc = "File Explorer" })
vim.keymap.set("n", "<leader>fc", function() Snacks.picker.files({cwd = vim.fn.stdpath("config")}) end, { desc = "Find Config Files" })
vim.keymap.set("n", "<leader>ff", function() Snacks.picker.files() end, { desc = "Find Files" })

vim.keymap.set("n", "<leader>fb", function() Snacks.picker.grep_buffers() end, { desc = "Grep Opened Buffers" })
vim.keymap.set("n", "<leader>fd", function() Snacks.picker.diagnostics() end, { desc = "Diagnostics" })
vim.keymap.set("n", "<leader>fD", function() Snacks.picker.diagnostics_buffer() end, { desc = "Buffer Diagnostics" })
vim.keymap.set("n", "<leader>fk", function() Snacks.picker.keymaps() end, { desc = "Keymaps" })
vim.keymap.set("n", "<leader>fm", function() Snacks.picker.marks() end, { desc = "Marks" })
vim.keymap.set("n", "<leader>fM", function() Snacks.picker.man() end, { desc = "Man Pages" })

vim.keymap.set("n", "<leader>bd", function() Snacks.picker.bufdelete() end, { desc = "Delete Buffer" })

vim.keymap.set( "n", "gd", function() Snacks.picker.lsp_definitions() end,{ desc = "Goto Definition" })
vim.keymap.set( "n", "gD", function() Snacks.picker.lsp_declarations() end,{ desc = "Goto Declaration" })
vim.keymap.set( "n", "gr", function() Snacks.picker.lsp_references() end, { nowait = true, desc = "References" })
vim.keymap.set( "n", "gI", function() Snacks.picker.lsp_implementations() end,{ desc = "Goto Implementation" })
vim.keymap.set( "n", "gy", function() Snacks.picker.lsp_type_definitions() end,{ desc = "Goto T[y]pe Definition" })
vim.keymap.set( "n", "gai", function() Snacks.picker.lsp_incoming_calls() end,{ desc = "C[a]lls Incoming" })
vim.keymap.set( "n", "gao", function() Snacks.picker.lsp_outgoing_calls() end,{ desc = "C[a]lls Outgoing" })
vim.keymap.set( "n", "<leader>ss", function() Snacks.picker.lsp_symbols() end,{ desc = "LSP Symbols" })
vim.keymap.set( "n", "<leader>sS", function() Snacks.picker.lsp_workspace_symbols() end,{ desc = "LSP Workspace Symbols" })

vim.keymap.set("n", "<leader>bc", Snacks.bufdelete.delete,{ desc = "Delete buffers" })
vim.keymap.set("n", "<leader>bC", Snacks.bufdelete.other,{ desc = "Delete other buffers" })
vim.keymap.set("n", "<leader>gg", function()
    Snacks.lazygit({ cwd = Snacks.git.get_root() })
end,{ desc = "Open lazygit" })
vim.keymap.set("n", "<leader>n", Snacks.notifier.show_history,{ desc = "Notification history" })
vim.keymap.set("n", "<leader>N", Snacks.notifier.hide,{ desc = "Notification history" })
vim.keymap.set("n", "<leader>gb", Snacks.git.blame_line,{ desc = "Git blame line" })

vim.keymap.set("n", "<leader>K", Snacks.image.hover,{ desc = "Display image in hover" })
