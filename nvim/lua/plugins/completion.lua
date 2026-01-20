vim.pack.add({
    { src = "https://github.com/archie-judd/blink-cmp-words" },
    { src = "https://github.com/saghen/blink.cmp", version = vim.version.range('1.*') },
    { src = "https://github.com/rafamadriz/friendly-snippets" },
})

vim.api.nvim_create_autocmd({ "InsertEnter", "CmdlineEnter" }, {
    group = vim.api.nvim_create_augroup("SetupCompletion", { clear = true }),
    once = true,
    callback = function()
        require("blink.cmp").setup({
            appearance = {
                nerd_font_variant = "mono",
            },
            completion = {
                documentation = {
                    auto_show = true,
                    auto_show_delay_ms = 500,
                    window = {
                        border = "rounded",
                        scrollbar = false,
                    },
                },
                list = {
                    selection = {
                        preselect = true,
                        auto_insert = true,
                    },
                },
                menu = {
                    border = "rounded",
                    auto_show = true,
                    auto_show_delay_ms = 0,
                    scrollbar = false,
                },
            },
            keymap = {
                ["<C-u>"] = { "scroll_documentation_up", "fallback" },
                ["<C-d>"] = { "scroll_documentation_down", "fallback" },
                preset = "enter",
            },
            signature = {
                enabled = true,
            },
            cmdline = {
                completion = {
                    menu = {
                        auto_show = true,
                        -- border = "none",
                    },
                },
            },
            sources = {
                default = { "lsp", "path", "snippets", "buffer" },
                providers = {
                    snippets = {
                        opts = { friendly_snippets = true },
                        score_offset = 1000,
                        should_show_items = function(ctx) -- avoid triggering snippets after . " ' chars.
                            return ctx.trigger.initial_kind ~= "trigger_character"
                        end,
                    },

                    -- Use the dictionary source
                    dictionary = {
                        name = "blink-cmp-words",
                        module = "blink-cmp-words.dictionary",
                        -- All available options
                        opts = {
                            -- The number of characters required to trigger completion.
                            -- Set this higher if completion is slow, 3 is default.
                            dictionary_search_threshold = 3,

                            -- See above
                            score_offset = 0,

                            -- See above
                            definition_pointers = { "!", "&", "^" },
                        },
                    },
                },
                -- Setup completion by filetype
                per_filetype = {
                    text = { "dictionary" },
                    markdown = { "lsp", "thesaurus" },
                    typst = { "lsp", "snippets", "dictionary" },
                    tex = { "dictionary", "thesaurus" },
                },
            },
            fuzzy = {
                implementation = "prefer_rust_with_warning",
                max_typos = function(keyword)
                    return math.floor(#keyword / 4)
                end,
                frecency = {
                    enabled = true,
                    path = vim.fn.stdpath("state") .. "/blink/cmp/frecency.dat",
                    unsafe_no_lock = false,
                },
                use_proximity = true,

                sorts = {
                    "score",
                    "sort_text",
                },

                prebuilt_binaries = {
                    download = true,
                    ignore_version_mismatch = false,
                    force_version = nil,
                    force_system_triple = nil,
                    extra_curl_args = {},

                    proxy = {
                        from_env = true,
                        url = nil,
                    },
                },
            },
        })
    end,
})
