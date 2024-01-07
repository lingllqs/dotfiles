return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.5',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = "make",
      enabled = vim.fn.executable("make") == 1,
    }
  },
  cmd = 'Telescope',
  keys = {
    { '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>",      desc = 'search files' },
    { '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>",         desc = 'search buffer' },
    { '<leader>/',  "<cmd>lua require('telescope.builtin').live_grep()<cr>",       desc = 'search context' },
    { '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<cr>",       desc = 'search help dosc' },
    { '<leader>:',  "<cmd>lua require('telescope.builtin').command_history()<cr>", desc = 'search command history' },
  },
  config = function()
    require('telescope').setup({
      defaults = {
        prompt_prefix        = '❯ ',
        path_display         = { 'smart' },
        file_ignore_patterns = {
          '.git',
          'lazy-lock.json',
          '*.lock'
        },
        mappings             = {
          i = {
            ["<esc>"] = require('telescope.actions').close,
            ["<c-u>"] = false,
          },
          n = {
            ["<c-c>"] = require('telescope.actions').close,
          }
        },
        layout_config        = {
          horizontal = {
            height = 0.7,
            preview_cutoff = 100,
            prompt_position = "bottom",
            width = 0.6
          },
        },
      },
      pickers = {
        find_files = {
          -- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
          find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
        },
      },
    })

    require('telescope').load_extension('fzf')
  end
}
