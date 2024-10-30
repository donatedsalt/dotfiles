return {
  {
    'navarasu/onedark.nvim',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'onedark'
      vim.cmd.hi 'Comment gui=none'
    end,
    opts = {
      transparent = false,
    },
  },
  {
    'folke/tokyonight.nvim',
    opts = {
      transparent = false,
    },
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    opts = {
      transparent_background = false,
    },
  },
  {
    'ayu-theme/ayu-vim',
  },
}
