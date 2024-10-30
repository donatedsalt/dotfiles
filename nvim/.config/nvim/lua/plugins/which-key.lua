return {
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    keys = {
      {
        '<leader>?',
        function()
          require('which-key').show { global = false }
        end,
        desc = 'Buffer Local Keymaps (which-key)',
      },
    },
    opts = {
      spec = {
        { '<leader>c', group = 'Code', mode = { 'n', 'x' } },
        { '<leader>s', group = 'Search', mode = { 'n', 'x' } },
        { '<leader>t', group = 'Toggle' },
        { '<leader>h', group = 'Git Hunk', mode = { 'n', 'v' } },
        { '<leader>o', group = 'Obsidian' },
        { '<leader>g', group = 'Git' },
        { '<leader>e', group = 'Explorer' },
        { '<leader>b', group = 'Buffer' },
        { '<leader>u', group = 'Ui' },
      },
      win = {
        border = 'rounded',
      },
    },
  },
}
