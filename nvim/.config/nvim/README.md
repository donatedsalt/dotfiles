# Neovim config

Personal Neovim setup. Work in progress, but daily-driver usable.

## Requirements

- Neovim 0.11+
- A Nerd Font (for icons)
- `git`, `make`, a C compiler (for treesitter parsers)
- `ripgrep` and `fd` (for picker grep / file search)

## Install

This config lives under `nvim/.config/nvim/` so it works with GNU Stow from the dotfiles root:

```sh
stow nvim
```

Or symlink/copy `nvim/.config/nvim/` to `$XDG_CONFIG_HOME/nvim` manually.

First launch will bootstrap [lazy.nvim](https://github.com/folke/lazy.nvim) and install all plugins.

## Stack

- **Plugin manager**: lazy.nvim
- **UI core**: [snacks.nvim](https://github.com/folke/snacks.nvim) (picker, explorer, notifier, dashboard, statuscolumn, terminal, lazygit)
- **LSP/completion**: nvim-lspconfig + mason + blink.cmp + lazydev
- **Treesitter**: nvim-treesitter
- **File nav**: oil.nvim, harpoon
- **Editing**: mini.nvim (ai, surround, pairs, jump, bracketed, move, cursorword, statusline)
- **Git**: gitsigns, lazygit (via snacks)
- **Diagnostics**: trouble.nvim
- **Format**: conform.nvim
- **Debug**: nvim-dap + dap-ui
- **Notes**: obsidian.nvim, render-markdown
- **Misc**: noice, which-key, todo-comments, auto-session, vim-sleuth, boole

## Layout

```
init.lua
lua/
  config/    -- options, keymaps, autocmds, lazy bootstrap
  plugins/   -- one file per plugin
```
