-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.cmd([[
    nnoremap m/ :Tab /\/\/<cr>
    nnoremap m\ :Tab /\<cr>
    nnoremap m- :Tab /--<cr>
    nnoremap m* :Tab /\/\*<cr>
    nnoremap m= :Tab /=<cr>
    nnoremap m" :Tab /"<cr>
    nnoremap m: :Tab /:<cr>
    nnoremap m; :Tab /;<cr>
    nnoremap m# :Tab /#<cr>
    nnoremap m\| :Tab /\|<cr>
]])

local map = vim.keymap.set

map("i", "<c-u>", "<esc>viwUea", { noremap = true, silent = true })
map("n", "<bs>", "viwc", { noremap = true, silent = true })

map("i", "jk", "<esc>", { noremap = true, silent = true })
map("n", ";", ":", { noremap = true })
map("v", ";", ":", { noremap = true })
map("n", "q", "<cmd>q<cr>")

map("n", "0", "<cmd>call v:lua.MagicMove()<cr>", { noremap = true, silent = true })
-- map("v", "T", ":call v:lua.MagicToggleHump(v:true)<CR>", { noremap = true, silent = true })
-- map("v", "t", ":call v:lua.MagicToggleHump(v:false)<CR>", { noremap = true, silent = true })

function MagicMove()
  local first = 1
  local head = #vim.fn.getline(".") - #vim.fn.substitute(vim.fn.getline("."), "^\\s*", "", "G") + 1
  local before = vim.fn.col(".")
  vim.fn.execute(before == first and first ~= head and "norm! ^" or "norm! $")
  local after = vim.fn.col(".")
  if before == after then
    vim.fn.execute("norm! 0")
  end
end

-- function MagicToggleHump(upperCase)
--   vim.fn.execute('normal! gv"tx')
--   local w = vim.fn.getreg("t")
--   local toHump = w:find("_") ~= nil
--   if toHump then
--     w = w:gsub("_(%w)", function(c)
--       return c:upper()
--     end)
--   else
--     w = w:gsub("(%u)", function(c)
--       return "_" .. c:lower()
--     end)
--   end
--   if w:sub(1, 1) == "_" then
--     w = w:sub(2)
--   end
--   if upperCase then
--     w = w:sub(1, 1):upper() .. w:sub(2)
--   end
--   vim.fn.setreg("t", w)
--   vim.fn.execute('normal! "tP')
-- end
