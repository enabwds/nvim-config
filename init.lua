local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.o.guicursor = "n-v-c:block-Cursor/lCursor,i:blinkon1"
vim.g.mapleader = " "
vim.opt.rtp:prepend(lazypath)
vim.opt.background = "dark" -- set this to dark or light
vim.cmd("colorscheme oxocarbon")
require("lazy").setup("plugins")
require("vim-options")

