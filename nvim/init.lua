vim.loader.enable()
require("essentials")
require("lazy_nvim")

if vim.g.neovide then
    vim.o.guifont = "JetBrainsMono Nerd Font:h12"
    vim.opt.linespace = 0
    vim.g.neovide_scale_factor = 1.0
end
