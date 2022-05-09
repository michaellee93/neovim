local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- shorten keymap function name
local keymap = vim.api.nvim_set_keymap

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)


-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)


-- move text up and down
-- keymap("v", "<A-j>", ":m .+1<CR>==", opts)
-- keymap("v", "<A-k>", ":m .-2<CR>==", opts)


-- move text up and down
keymap("x", "J", ":move '>+<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)


-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w-h>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w-h>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w-h>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w-h>l", term_opts)
