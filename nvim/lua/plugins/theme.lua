return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000,
    config = function ()
      require("everforest").setup()
    end
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
