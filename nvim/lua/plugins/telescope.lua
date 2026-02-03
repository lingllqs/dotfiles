vim.pack.add({
	{ src = "https://github.com/nvim-telescope/telescope.nvim" },
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope-fzf-native.nvim" },
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>/', builtin.current_buffer_fuzzy_find, { desc = 'Grep Current Buffer' })
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find Files (cwd)' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Grep (cwd)' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'List Opened Buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Help Tags' })
vim.keymap.set('n', '<leader>ss', builtin.grep_string, { desc = 'Search Strings (cwd)' })
vim.keymap.set('n', '<leader>sf', builtin.git_files, { desc = 'Search Git Files (git ls-files)' })
vim.keymap.set('n', '<leader>fM', builtin.man_pages, { desc = 'Man Pages' })
vim.keymap.set('n', '<leader>fm', builtin.marks, { desc = 'List Marks' })
vim.keymap.set('n', '<leader>fq', builtin.quickfix, { desc = 'List Quickfix' })
vim.keymap.set('n', '<leader>fr', builtin.registers, { desc = 'List Registers' })
vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = 'List Keymaps' })

vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, { desc = 'Document Symbols' })
vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = 'Diagnostics' })
-- vim.keymap.set('n', 'gi', builtin.lsp_implementations, { desc = 'Goto Implementation' })
-- vim.keymap.set('n', 'gd', builtin.lsp_definitions, { desc = 'Goto Definitions' })
