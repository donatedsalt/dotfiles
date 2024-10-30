-- Show line numbers.
vim.opt.number = true
-- Enable relative line numbers.
vim.opt.relativenumber = true

-- Enable mouse mode.
vim.opt.mouse = 'a'

-- Don't show the mode.
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
-- vim.schedule(function()
--   vim.opt.clipboard = 'unnamedplus'
-- end)

-- Enable break indent.
vim.opt.breakindent = true

-- Enable smart indent.
vim.opt.smartindent = true

-- Change tabstop.
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching.
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time.
vim.opt.updatetime = 1000

-- Decrease mapped sequence wait time.
vim.opt.timeoutlen = 300

-- How new splits should open.
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Use virutal cells in block mode.
vim.opt.virtualedit = 'block'

-- Enable better terminal colors.
vim.opt.termguicolors = true

-- Sets how neovim will display certain whitespace characters in the editor.
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions in a window.
vim.opt.inccommand = 'split'

-- Highlight the line which has cursor.
vim.opt.cursorline = true

-- Number of lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Floating window border style.
vim.opt.winborder = 'rounded'
-- Floating window transparency.
vim.opt.winblend = 10

-- Popup menu transparency.
vim.opt.pumblend = 10
-- Popup menu height.
vim.opt.pumheight = 10

-- use treesitter folding.
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'

-- Show diagnostcs in a virtual line.
vim.diagnostic.config { virtual_lines = true }
