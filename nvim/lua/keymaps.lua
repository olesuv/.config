local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap('i', 'jj', '<Esc>', opts)
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

local builtin = require('telescope.builtin')
keymap('n', '<leader>ff', builtin.find_files, { desc = 'Find files' })
keymap('n', '<leader>fg', builtin.live_grep, { desc = 'Live grep' })
keymap('n', '<leader>fb', builtin.buffers, { desc = 'Find open buffers' })
keymap('n', '<leader>fh', builtin.help_tags, { desc = 'Find help tags' })

