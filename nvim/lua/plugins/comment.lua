return {
  "yaocccc/vim-comment",
  enabled = false,
  config = function()
    vim.cmd([[
      let g:vim_line_comments = {
      \  'vim': '"', 
      \  'vimrc': '"', 
      \  'rust': "//",
      \  'js': '//', 
      \  'ts': '//',
      \  'java': '//', 'class': '//',
      \  'c': '//', 
      \  'h': '//',
      \  'lua': '--',
      \  'default': '#',
      \  'go.mod': '//',
      \}
      let g:vim_chunk_comments = {
      \  'vim': ['"', '"', '"'], 
      \  'vimrc': ['"', '"', '"'],
      \  'sh': [':<<!', '', '!'],
      \  'md': ['```', '', '```'],
      \  'default': ['/*', ' *', ' */'],
      \  'go.mod': ['/*', ' *', ' */'],
      \}

      nmap <silent> ?? :NToggleComment<CR>
      xmap <silent> /  :<c-u>VToggleComment<CR>
      smap <silent> /  <c-g>:<c-u>VToggleComment<CR>
      xmap <silent> ?  :<c-u>CToggleComment<CR>
      smap <silent> ?  <c-g>:<c-u>CToggleComment<CR>
      ]])
  end,
}
