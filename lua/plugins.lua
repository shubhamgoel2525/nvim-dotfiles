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
  {
    "svrana/neosolarized.nvim",
    dependencies = {
      "tjdevries/colorbuddy.vim"
    }
  },
  {
    'hoob3rt/lualine.nvim' -- Statusline
  },
  {
    'neovim/nvim-lspconfig' -- LSP
  }
}, opts)

