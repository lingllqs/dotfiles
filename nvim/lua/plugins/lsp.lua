vim.pack.add({
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
})

require("mason").setup()

vim.lsp.enable({ "clangd", "lua_ls", "rust_analyzer" })
vim.diagnostic.config({ virtual_text = true })
vim.lsp.config('lua_ls', {
    on_init = function(client)
        if client.workspace_folders then
            local path = client.workspace_folders[1].name
            if
                path ~= vim.fn.stdpath('config')
                and (vim.uv.fs_stat(path .. '/.luarc.json') or vim.uv.fs_stat(path .. '/.luarc.jsonc'))
            then
                return
            end
        end

        client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
            runtime = {
                version = 'LuaJIT',
                path = {
                    'lua/?.lua',
                    'lua/?/init.lua',
                },
            },
            workspace = {
                checkThirdParty = false,
                library = {
                    vim.env.VIMRUNTIME
                }
            }
        })
    end,
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim", "Snacks" },
            },
        }
    }
})

vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Go to definition' })
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = 'Go to declaration' })
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { desc = 'Go to implementation' })
vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = 'Find references' })
vim.keymap.set('n', '<leader>cr', vim.lsp.buf.rename, { desc = '重命名符号' })
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'LSP code action' })
vim.keymap.set("n", "<leader>cm", "<CMD>Mason<CR>", { desc = "启动 Mason" })
vim.keymap.set({ "n", "v" }, "<leader>cf", "<CMD>lua vim.lsp.buf.format()<CR>", { desc = "代码格式化" })

vim.keymap.set('n', '[d', function()
    vim.diagnostic.jump({ wrap = true, count = -1 })
end, { desc = 'prev diagnostic' })

vim.keymap.set('n', ']d', function()
    vim.diagnostic.jump({ wrap = true, count = 1 })
end, { desc = 'next diagnostic' })

