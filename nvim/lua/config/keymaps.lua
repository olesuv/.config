local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- fast esape from insert
keymap("i", "jj", "<ESC>", opts)

-- files
keymap("n", "<C-b>", ":Neotree filesystem reveal left toggle<CR>", opts)
keymap("n", "<C-p>", ":Telescope find_files<CR>", opts)

-- normal keyboard
keymap({ "n", "v" }, "<C-a>", "gg0vG$", opts)
keymap({ "n", "v" }, "<C-c>", '"+y', opts)
keymap({ "n", "v" }, "<C-v>", '"+p', opts)
keymap("n", "<C-w>", ":bd<CR>", opts)

-- clear search highlights
keymap("n", "<leader>h", ":nohlsearch<CR>", opts)
