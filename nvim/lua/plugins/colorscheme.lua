return {
    {
        "folke/tokyonight.nvim",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            -- load the colorscheme here
            -- vim.cmd([[colorscheme tokyonight]])
        end,
    },
    {
        "EdenEast/nightfox.nvim",
        lazy = false,
        priority = 1000,
        config = function ()
            -- vim.cmd([[colorscheme nightfox]])
        end
    },
    {
        "joshdick/onedark.vim",
        lazy = false,
        priority = 1000,
        config = function ()
            -- vim.cmd([[colorscheme onedark]])
        end
    },
    {
	    'Mofiqul/vscode.nvim',
	    lazy = false,
	    config = function ()
	    	-- vim.cmd([[colorscheme vscode]])
	    end
    },
    {
        'morhetz/gruvbox',
        lazy = flase,
        config = function ()
            vim.cmd([[colorscheme gruvbox]])
        end
    }
}
