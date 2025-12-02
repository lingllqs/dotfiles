vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true

vim.o.number = true         -- 显示行号
vim.o.relativenumber = true -- 启用相对行号
vim.o.mouse = "a"           -- 启用鼠标
vim.o.showmode = false      -- 关闭模式提醒(insert,normal,visual等),状态栏中已显示了
vim.schedule(function()
	vim.o.clipboard = "unnamedplus"
end)

vim.o.breakindent = true -- 行内容过长换行时保持同样的缩进
vim.o.tabstop = 4        -- Tab 空格数
vim.o.shiftwidth = 4     -- 缩进空格数
vim.o.undofile = true    -- 保存撤销历史
vim.o.swapfile = false   -- 不使用交换文件，大型项目建议开启
vim.o.ignorecase = true  -- 查找时忽略大小写
vim.o.smartcase = true
vim.o.signcolumn = "yes"
vim.o.updatetime = 250
vim.o.timeoutlen = 300  -- 等待映射完成时间
vim.o.splitright = true -- 分屏位置
vim.o.splitbelow = true -- 分屏位置
vim.o.list = true       -- 显示不同空格的类型(如Tab默认为>)，通过listchars选项修改
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
vim.o.inccommand = "split"
vim.o.cursorline = true -- 高亮当前行
vim.o.scrolloff = 10    -- 光标所在行上下最少需要显示的内容行数
vim.o.confirm = true    -- 修改内容后退出时提示

vim.opt.termguicolors = true

-- 复制文本内容时高亮
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})
