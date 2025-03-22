return {

  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "Mofiqul/vscode.nvim", name = "vscode", priority = 1000 },
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000,
    -- config = function()
    --   require("everforest").setup()
    -- end,
  },
    -- 注释
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      on_colors = function(colors)
        colors.hint = colors.orange
        colors.comment = "#6A9951"
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
