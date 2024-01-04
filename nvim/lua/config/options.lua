local options = {
  backup = false,                          -- creates a backup file (创建备份文件)
  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard (允许neovim访问系统剪切板)
  cmdheight = 1,                           -- more space in the neovim command line for displaying messages (命令行高度)
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp (补全选项)
  conceallevel = 0,                        -- so that `` is visible in markdown files (``在markdown文件可视化)
  fileencoding = "utf-8",                  -- the encoding written to a file (文件编码)
  hlsearch = true,                         -- highlight all matches on previous search pattern (高亮所有匹配的查找内容)
  ignorecase = true,                       -- ignore case in search patterns (搜索时忽略大小写)
  mouse = "a",                             -- allow the mouse to be used in neovim (允许鼠标操作)
  pumheight = 10,                          -- pop up menu height (弹出菜单的高度)
  showmode = false,                        -- we don't need to see things like -- INSERT -- anymore (显示当前模式)
  showtabline = 2,                         -- always show tabs (显示标签栏)
  smartcase = true,                        -- smart case (智能大小写)
  smartindent = true,                      -- make indenting smarter again (智能缩进)
  splitbelow = true,                       -- force all horizontal splits to go below current window (拆分窗口在下方)
  splitright = true,                       -- force all vertical splits to go to the right of current window (拆分窗口在右边)
  swapfile = false,                        -- creates a swapfile (是否创建交换文件)
  termguicolors = true,                    -- set term gui colors (most terminals support this)
  timeoutlen = 300,                        -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = true,                         -- enable persistent undo (是否允许旧文件内容持续存在)
  updatetime = 300,                        -- faster completion (4000ms default)
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited (不允许其他应用同时编辑)
  expandtab = true,                        -- convert tabs to spaces (tab转换为空格)
  shiftwidth = 4,                          -- the number of spaces inserted for each indentation (shift键缩进空格数)
  tabstop = 4,                             -- insert 4 spaces for a tab (tab键缩进空格数)
  cursorline = true,                       -- highlight the current line (高亮当前行)
  number = true,                           -- set numbered lines (显示行号)
  relativenumber = false,                  -- set relative numbered lines (显示相对行号)
  numberwidth = 2,                         -- set number column width to 2 {default 4} (行号宽度)
  signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time (显示标记列)
  wrap = false,                            -- display lines as one long line (一行是否不超过屏幕)
  confirm = true,
  linebreak = true,                        -- companion to wrap, don't split words (不拆分单词)
  scrolloff = 8,                           -- minimal number of screen lines to keep above and below the cursor (光标距离屏幕上下的行数)
  sidescrolloff = 8,                       -- minimal number of screen columns either side of cursor if wrap is `false` (光标距离屏幕左右列数)
  guifont = "monospace:h17",               -- the font used in graphical neovim applications (图形界面字体)
  whichwrap = "bs<>[]hl",                  -- which "horizontal" keys are allowed to travel to prev/next line
  exrc = true
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- vim.opt.shortmess = "ilmnrx"                        -- flags to shorten vim messages, see :help 'shortmess'
vim.opt.shortmess:append "c"                           -- don't give |ins-completion-menu| messages
vim.opt.iskeyword:append "-"                           -- hyphenated words recognized by searches (连接符号视为单词一部分)
vim.opt.formatoptions:remove({ "c", "r", "o" })        -- don't insert the current comment leader automatically for auto-wrapping comments using 'textwidth', hitting <Enter> in insert mode, or hitting 'o' or 'O' in normal mode.
vim.opt.runtimepath:remove("/usr/share/vim/vimfiles")  -- separate vim plugins from neovim in case vim still in use

