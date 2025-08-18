local Plug = vim.fn['plug#']
local stdpath = vim.fn.stdpath

vim.call('plug#begin', stdpath('data') .. './plugged')

Plug('neovim/nvim-lspconfig')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-vsnip')
Plug('hrsh7th/vim-vsnip')

Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim')
Plug('nvim-telescope/telescope-fzf-native.nvim', { ['do'] = 'make' })

Plug('esmuellert/nvim-eslint')

Plug('nvimtools/none-ls.nvim')
Plug('MunifTanjim/prettier.nvim')

Plug 'rose-pine/neovim'

vim.call('plug#end')

