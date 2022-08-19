local keymap = vim.keymap.set

local opts = { silent = true }

--Remap space as leader key
keymap("", ",", "<Nop>", opts)
vim.g.mapleader = ","

keymap('n', 'x', '"_x')

-- Increment/decrement
keymap('n', '+', '<C-a>')
keymap('n', '-', '<C-x>')

-- Delete a word backwards
keymap('n', 'dw', 'vb"_d')

-- Select all
keymap('n', '<C-a>', 'gg<S-v>G')

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Fast saving with <leader> and s
keymap('n', '<leader>s', ':w<CR>')
keymap('i', '<leader>s', '<C-c>:w<CR>')

-- Map Esc to kk
keymap('i', 'kk', '<Esc>')


-- New tab
keymap('n', 'te', ':tabedit')
-- Split window
keymap('n', 'ss', ':split<Return><C-w>w')
keymap('n', 'sv', ':vsplit<Return><C-w>w')
-- Move window
keymap('n', '<Space>', '<C-w>w')
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<down>", ":resize -2<CR>", opts)
keymap("n", "<up>", ":resize +2<CR>", opts)
keymap("n", "<left>", ":vertical resize -2<CR>", opts)
keymap("n", "<right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<Leader>.", "<C-^>", opts)
-- Close buffers
keymap("n", "<S-q>", "<cmd>Bdelete!<CR>", opts)

-- Better paste
keymap("v", "p", '"_dP', opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
