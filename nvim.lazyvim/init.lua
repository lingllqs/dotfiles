-- bootstrap lazy.nvim, LazyVim and your plugins
vim.g.mapleader = " "
vim.g.maplocalleader = " "
require("config.lazy")
require("tools.coderun")

-- vim.opt.rtp:append("$HOME/workspace/projects/neovim_projects/myplguins/")
-- local pkg = require('first_plugin')
-- pkg.setup({
--   color = 'green'
-- })
