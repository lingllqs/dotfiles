return {
    'jiangmiao/auto-pairs',
    enabled = false,
    config = function()
        vim.cmd[[
            let g:AutoPairsFlyMode = 1
            let g:AutoPairsShortcutBackInsert = '<M-b>'
        ]]
    end,
}
