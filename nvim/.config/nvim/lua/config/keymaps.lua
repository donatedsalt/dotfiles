-- Clear search highlights.
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<cr>')

-- Better window navigation.
vim.keymap.set({ 'n', 't' }, '<C-h>', '<cmd>wincmd h<cr>', { desc = 'Move Focus to the Left Window' })
vim.keymap.set({ 'n', 't' }, '<C-l>', '<cmd>wincmd l<cr>', { desc = 'Move Focus to the Right Window' })
vim.keymap.set({ 'n', 't' }, '<C-j>', '<cmd>wincmd j<cr>', { desc = 'Move Focus to the Lower Window' })
vim.keymap.set({ 'n', 't' }, '<C-k>', '<cmd>wincmd k<cr>', { desc = 'Move Focus to the Upper Window' })

-- Window resize.
vim.keymap.set('n', '<C-Left>', '"<Cmd>vertical resize -" . v:count1 . "<CR>"', { expr = true, replace_keycodes = false, desc = 'Decrease window width' })
vim.keymap.set('n', '<C-Down>', '"<Cmd>resize -" . v:count1 . "<CR>"', { expr = true, replace_keycodes = false, desc = 'Decrease window height' })
vim.keymap.set('n', '<C-Up>', '"<Cmd>resize +" . v:count1 . "<CR>"', { expr = true, replace_keycodes = false, desc = 'Increase window height' })
vim.keymap.set('n', '<C-Right>', '"<Cmd>vertical resize +" . v:count1 . "<CR>"', { expr = true, replace_keycodes = false, desc = 'Increase window width' })

-- Move cursor with Alt in insert, terminal, and command-line modes.
vim.keymap.set({ 'i', 't' }, '<M-h>', '<Left>', { desc = 'Left' })
vim.keymap.set({ 'i', 't' }, '<M-j>', '<Down>', { desc = 'Down' })
vim.keymap.set({ 'i', 't' }, '<M-k>', '<Up>', { desc = 'Up' })
vim.keymap.set({ 'i', 't' }, '<M-l>', '<Right>', { desc = 'Right' })
vim.keymap.set('c', '<M-h>', '<Left>', { desc = 'Left', silent = false })
vim.keymap.set('c', '<M-l>', '<Right>', { desc = 'Right', silent = false })

-- Ctrl+s to save.
vim.keymap.set({ 'n', 'i', 'v' }, '<C-s>', '<Esc><cmd>w<cr>', { desc = 'Save file changes' })

-- Open lazy.
vim.keymap.set('n', '<leader>l', '<cmd>Lazy<cr>', { desc = 'Open Lazy' })

-- Paste from system clipboard.
vim.keymap.set({ 'n', 'v' }, '<leader>p', '"+p', { desc = 'Paste from clipboard' })
-- Delete to system clipboard.
vim.keymap.set({ 'n', 'v' }, '<leader>d', '"+d', { desc = 'Delete to clipboard' })
-- Yank to system clipboard.
vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y', { desc = 'Yank to clipboard' })

-- Search inside visual selection.
vim.keymap.set('x', '<leader>sv', '<esc>/\\%V', { silent = false, desc = 'Inside visual selection' })
