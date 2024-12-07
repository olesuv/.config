-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

vim.g.lazyvim_prettier_needs_config = false

vim.opt.number = true

vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
opt.backup = false
vim.opt.scrolloff = 10
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.hlsearch = true
vim.opt.shell = "zsh"
vim.opt.path:append({ "**" }) -- finding files to subfolders

-- new line
opt.wrap = true
opt.linebreak = true
