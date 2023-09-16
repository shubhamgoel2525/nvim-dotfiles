-- local status, lazy = pcall(require, 'lazy')

-- Installing lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Setup plugins
require("lazy").setup({
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { 'L3MON4D3/LuaSnip' },  -- Snippet
  {
    'hoob3rt/lualine.nvim' -- Statusline
  },
  {
    'onsails/lspkind-nvim' -- vscode-like pictograms
  },
  {
    'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  },
  {
    'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  },
  {
    'hrsh7th/nvim-cmp' -- Completion
  },
  {
    'neovim/nvim-lspconfig'                                             -- LSP
  },
  { 'nvim-treesitter/nvim-treesitter',           build = ":TSUpdate" }, -- treesitter
  { 'windwp/nvim-autopairs' },
  { 'windwp/nvim-ts-autotag' },
  { 'nvim-telescope/telescope.nvim',             dependencies = { 'nvim-lua/plenary.nvim' } },
  { 'nvim-telescope/telescope-file-browser.nvim' }
}, opts)
