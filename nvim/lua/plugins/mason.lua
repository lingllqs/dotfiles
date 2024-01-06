return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        'WhoIsSethDaniel/mason-tool-installer.nvim'
    },
    keys = {
        { "<leader>cm", mode = { "n" }, "<cmd>Mason<cr>", desc = "launch Mason" }
    },
    config = function()
        require("mason").setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        })
        require("mason-lspconfig").setup()
        require("mason-tool-installer").setup({
            ensure_installed = {
                'lua-language-server',
                'stylua',
                'rust-analyzer'
            }
        })
    end,
}
