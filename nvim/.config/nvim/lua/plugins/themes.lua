return {
  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'kanagawa'
      vim.cmd.hi 'Comment gui=none'
    end,
  },
  { 'folke/tokyonight.nvim' },
  { 'catppuccin/nvim', name = 'catppuccin' },
  { 'ayu-theme/ayu-vim' },
  { 'navarasu/onedark.nvim' },
}
