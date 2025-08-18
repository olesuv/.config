vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('options')

require('plugins')

require('config.telescope')
require('config.prettier')
require('cmp-config')
require('lsp')

require('keymaps')

vim.cmd('colorscheme rose-pine')

