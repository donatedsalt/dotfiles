-- Clear search highlights.
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<cr>')

-- Diagnostic keymaps.
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open Diagnostic Quickfix List' })

-- Exit terminal mode in the builtin terminal.
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Disable arrow keys in normal mode.
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<cr>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<cr>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<cr>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<cr>')

-- Make split navigation easier.
vim.keymap.set({ 'n', 't' }, '<C-h>', '<cmd>wincmd h<cr>', { desc = 'Move Focus to the Left Window' })
vim.keymap.set({ 'n', 't' }, '<C-l>', '<cmd>wincmd l<cr>', { desc = 'Move Focus to the Right Window' })
vim.keymap.set({ 'n', 't' }, '<C-j>', '<cmd>wincmd j<cr>', { desc = 'Move Focus to the Lower Window' })
vim.keymap.set({ 'n', 't' }, '<C-k>', '<cmd>wincmd k<cr>', { desc = 'Move Focus to the Upper Window' })

-- Toggle line wrap.
vim.keymap.set('n', '<leader>tw', '<cmd>:set wrap!<cr>', { desc = 'Toggle Line Wrap' })

-- Ctrl+s to save.
vim.keymap.set({ 'n', 'i' }, '<C-s>', '<cmd>w<cr>', { desc = 'Save file changes' })
