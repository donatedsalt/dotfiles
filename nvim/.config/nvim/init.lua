-- Set the leader key.
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Nerd Font is installed and selected in the terminal.
vim.g.have_nerd_font = true

-- Import Options.
require 'config.options'

-- Import Keymaps.
require 'config.keymaps'

-- Import Auto Commands.
require 'config.autocmds'

-- Import Lazy.nvim.
require 'config.lazy'
