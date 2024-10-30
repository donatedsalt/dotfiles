return {
  {
    'rmagatti/auto-session',
    lazy = false,
    keys = {
      { '<leader>ss', '<cmd>SessionSearch<cr>', desc = 'Search Sessions' },
    },
    opts = {
      suppressed_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
    },
  },
}
