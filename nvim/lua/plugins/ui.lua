return {
    {
        -- buffer 栏
        'akinsho/bufferline.nvim', 
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons',
        config = function()
            require('bufferline').setup()
        end,
    },
    {
        -- 缩进竖线
        "lukas-reineke/indent-blankline.nvim", 
        main = "ibl", 
        opts = {}, 
        config = function()
            require("ibl").setup()
        end,
    },
    {
        -- git 状态
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end,
    },
    {
        -- 状态栏
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require("lualine").setup({
                options = {
                    theme = 'catppuccin',
                }
            })
        end,

    }
}
