local lspsaga = require 'lspsaga'

lspsaga.setup {
  server_filetype_map = {}
}

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<cr>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<cr>', opts)
vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga peek_definition<cr>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga finder<cr>', opts)
-- vim.keymap.set('n', 'gpo', '<Cmd>Lspsaga outgoing_calls<cr>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<cr>', opts)