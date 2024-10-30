return {
  {
    'folke/todo-comments.nvim',
    event = 'BufReadPre',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {},
    keys = {
      { '<leader>st', '<cmd>TodoTrouble<cr>', desc = 'Search Todos' },
    },
  },
}
