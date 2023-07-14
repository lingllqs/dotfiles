return {
    -- add gruvbox
    { "ellisonleao/gruvbox.nvim" },
    { "EdenEast/nightfox.nvim" },
    { 'projekt0n/github-nvim-theme'},
    { "nxstynate/rosePine.nvim", priority = 1000 },
    { "catppuccin/nvim", name = "catppuccin" },

    -- Configure LazyVim to load gruvbox
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "tokyonight",
        },
    },
}
