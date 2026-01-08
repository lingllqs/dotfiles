vim.pack.add({
	{ src = "https://github.com/nvim-telescope/telescope.nvim" },
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope-fzf-native.nvim" },
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>/', builtin.current_buffer_fuzzy_find, { desc = 'Grep Current Buffer' })
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find Files (cwd)' })
vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = 'Grep (cwd)' })
vim.keymap.set('n', '<leader>sb', builtin.buffers, { desc = 'Search Buffers' })
vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = 'Help Tags' })
vim.keymap.set('n', '<leader>ss', builtin.grep_string, { desc = 'Search Strings (cwd)' })
vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = 'Search Git Files (git ls-files)' })
vim.keymap.set('n', '<leader>sb', builtin.buffers, { desc = 'List Opened Buffers' })
vim.keymap.set('n', '<leader>sM', builtin.man_pages, { desc = 'Man Pages' })
vim.keymap.set('n', '<leader>sm', builtin.marks, { desc = 'List Marks' })
vim.keymap.set('n', '<leader>sq', builtin.quickfix, { desc = 'List Quickfix' })
vim.keymap.set('n', '<leader>sr', builtin.registers, { desc = 'List Registers' })
vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = 'List Keymaps' })

vim.keymap.set('n', '<leader>ls', builtin.lsp_document_symbols, { desc = 'Document Symbols' })
vim.keymap.set('n', '<leader>ld', builtin.diagnostics, { desc = 'Diagnostics' })
vim.keymap.set('n', 'gi', builtin.lsp_implementations, { desc = 'Goto Implementation' })
vim.keymap.set('n', 'gd', builtin.lsp_definitions, { desc = 'Goto Definitions' })
