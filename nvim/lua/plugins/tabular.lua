vim.pack.add({
	{src = "https://github.com/Kicamon/markdown-table-mode.nvim"},
	{src = "https://github.com/lingllqs/tabular"},
})

vim.api.nvim_create_autocmd("FileType", {
	group = vim.api.nvim_create_augroup("SetupMarkdown", { clear = true }),
	pattern = {"markdown"},
	once = true,
	callback = function ()
		require("markdown-table-mode").setup()
	end
})

vim.keymap.set("n", "<leader>mM", "<CMD>Mtm<CR>", {desc = "Toggle Form Format"})

vim.cmd([[
nnoremap <silent> <leader>m\| :Tabularize /\|<cr>
nnoremap <silent> <leader>m" :Tabularize /"<cr>
nnoremap <silent> <leader>m' :Tabularize /'<cr>
nnoremap <silent> <leader>m# :Tabularize /#<cr>
nnoremap <silent> <leader>m= :Tabularize /=<cr>
nnoremap <silent> <leader>m/ :Tabularize /\/\/<cr>
nnoremap <silent> <leader>m- :Tabularize /--<cr>
]])
