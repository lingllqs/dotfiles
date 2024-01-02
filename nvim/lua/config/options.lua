vim.g.mapleader = " "

local opt = vim.opt

vim.b.autoformat = false

opt.autowrite = true
opt.clipboard = "unnamedplus" -- 和系统剪切板同步
opt.tabstop = 4               -- Tab 键缩进
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.relativenumber = false -- 相对行号
opt.number = true          -- 行号
opt.cursorline = true      -- 当前行高亮
opt.confirm = true         -- 退出确认
opt.ignorecase = true      -- 忽略大小写
opt.smartcase = true
opt.list = true -- 显示不可视字符
opt.mouse = "a"
opt.inccommand = "nosplit"
opt.scrolloff = 5
opt.smoothscroll = true
opt.showmode = false -- 不显示当前模式
opt.signcolumn = "yes"
opt.smartindent = true
opt.splitbelow = true
opt.splitright = true
opt.timeoutlen = 300
opt.undofile = true
opt.undolevels = 10000
opt.virtualedit = "block"
opt.wildmode = "longest:full,full" -- 命令行补全模式
opt.wrap = false
opt.termguicolors = true
opt.fillchars = {
  foldopen = "",
  foldclose = "",
  -- fold = "⸱",
  fold = " ",
  foldsep = " ",
  diff = "╱",
  eob = " ",
}
