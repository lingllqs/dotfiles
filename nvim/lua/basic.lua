vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local options = {
    autoindent = true,
    autochdir = true,
    backup = false,
    colorcolumn = '0',
    conceallevel = 0,
    cmdheight = 0,
    confirm = true,
    cursorline = true,
    clipboard = "unnamedplus",
    expandtab = true,
    fileencoding = "utf-8",
    hlsearch = true,
    incsearch = true,
    ignorecase = true,
    laststatus = 1,
    linebreak = true,
    mouse = "a",
	number = true,
    numberwidth = 2,
	relativenumber = false,
    showmode = false,
    showtabline = 2,
    signcolumn = "yes",
    scrolloff = 5,
    sidescrolloff = 5,
    softtabstop = 4,
    shiftwidth = 4,
    splitright = true,
    splitbelow = true,
    swapfile = false,
    smartindent = true,
    smartcase = true,
    tabstop = 4,
    termguicolors = true,
    undofile = true,
    updatetime = 300,
    virtualedit = "block",
    wrap = false,
    whichwrap = "bs<>[]hl",
    writebackup = false,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.api.nvim_create_autocmd("TextYankPost", {
    group = vim.api.nvim_create_augroup("highlight_on_yank", {}),
    desc = "briefly highlight yank text",
    callback = function()
        vim.highlight.on_yank()
    end,
})

vim.api.nvim_create_autocmd("TermOpen", {
    pattern = "term://*",
    command = [[startinsert]]
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = { "*.md", "*.txt" },
    command = "setlocal wrap"
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile", "FileType" }, {
  pattern = { 'lua' },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.softtabstop = 2
  end,
})

vim.cmd([[
    augroup M 
        autocmd!
        autocmd BufEnter *.slint :setlocal filetype=slint
        autocmd BufEnter *.rs :setlocal filetype=rust
    augroup END
]])
