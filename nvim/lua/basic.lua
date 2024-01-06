vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local options = {
    fileencoding = "utf-8",

    showmode = false,
    showtabline = 2,
    laststatus = 1,
    cmdheight = 0,

	number = true,
	relativenumber = true,
    numberwidth = 2,
    signcolumn = "yes",

    confirm = true,
    wrap = false,
    whichwrap = "bs<>[]hl",
    linebreak = true,

    scrolloff = 5,
    sidescrolloff = 5,

	shiftwidth = 4,
	tabstop = 4,
	softtabstop = 4,
	expandtab = true,

	mouse = "a",
    clipboard = "unnamedplus",
    splitright = true,
    splitbelow = true,
    
    cursorline = true,
    hlsearch = true,
    incsearch = true,

    backup = false,
    undofile = true,
    writebackup = false,
    swapfile = false,

    smartcase = true,
    ignorecase = true,

    autoindent = true,
    smartindent = true,

    termguicolors = true,

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
