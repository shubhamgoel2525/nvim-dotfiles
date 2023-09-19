local ts = require 'nvim-treesitter.configs'

ts.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    'tsx',
    'lua',
    'json',
    'css',
    'markdown',
    'markdown_inline',
  },
  autotag = {
    enable = true
  }
}
