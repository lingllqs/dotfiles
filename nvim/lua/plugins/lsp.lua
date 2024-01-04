return {
    'neovim/nvim-lspconfig',
    config = function()
        require'lspconfig'.rust_analyzer.setup{
            settings = {
                ['rust-analyzer'] = {
                    diagnostics = {
                        enable = true;
                    }
                }
            }
        }
    end,
}
