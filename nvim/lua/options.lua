local option = vim.opt
local buffer = vim.b
local global = vim.g

option.autoread = true
option.autoindent = true
option.backup = false
option.backspace = { "indent", "eol", "start" }
option.completeopt = { "menuone", "noselect" }
option.cursorline = true
option.expandtab = true      --
option.exrc = true           --
option.hlsearch = true       --
option.incsearch = true      --
option.ignorecase = true     --
option.mouse = "a"           -- 允许鼠标操作
option.number = true         -- 显示行号
option.relativenumber = true -- 显示相对行号
option.smartcase = true      -- 智能匹配
option.showmode = false      -- 是否显示当前模式
option.signcolumn = "yes"    -- 显示符号列
option.shiftwidth = 4        -- Shift 键缩进
option.swapfile = false      -- 是否启用交换文件
option.shiftround = true     --
option.smartindent = true    --
option.splitright = true     --
option.termguicolors = true  --
option.tabstop = 4           -- Tab 键缩进
option.title = true          --
option.updatetime = 50       --
option.undofile = true       --
option.undodir = vim.fn.expand('$HOME/.local/share/nvim/undo')
option.wildmenu = true --
option.wrap = false    --

-- Buffer Settings --
buffer.fileenconding = "utf-8"

-- Global Settings --
global.mapleader = " "


