--[[
    If you don't know anything about Lua, I recommend taking some time to read through
    a guide. One possible example which will only take 10-15 minutes:
    - https://learnxinyminutes.com/docs/lua/

    After understanding a bit more about Lua, you can use `:help lua-guide` as a
    reference for how Neovim integrates Lua.
    - :help lua-guide
    - (or HTML version): https://neovim.io/doc/user/lua-guide.html
    The very first thing you should do is to run the command `:Tutor` in Neovim.
--]]

-- Set the leader key.
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if Nerd Font is installed and selected in the terminal.
vim.g.have_nerd_font = true

-- Import Options.
require 'config.options'

-- Import Keymaps.
require 'config.keymaps'

-- Import Auto Commands.
require 'config.autocmds'

-- Import Lazy.nvim.
require 'config.lazy'

-- vim: ts=2 sts=2 sw=2 et
