return {
  {
    'stevearc/oil.nvim',
    lazy = false,
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      delete_to_trash = true,
      skip_confirm_for_simple_edits = true,
      view_options = {
        show_hidden = true,
      },
      keymaps = {
        ['q'] = 'actions.close',
        ['gd'] = {
          desc = 'File detail view',
          callback = function()
            require('oil').set_columns { 'icon', 'permissions', 'size', 'mtime' }
          end,
        },
        ['gm'] = {
          desc = 'File Minimal view',
          callback = function()
            require('oil').set_columns { 'icon' }
          end,
        },
      },
      float = {
        padding = 2,
        max_width = 0.8,
        max_height = 0.8,
        border = 'rounded',
        win_options = {
          winblend = 0,
        },
      },
      confirmation = {
        border = 'rounded',
      },
    },
    init = function()
      vim.keymap.set('n', '-', '<cmd>Oil<cr>', { desc = 'Open Oil in floating window' })
      vim.keymap.set('n', '\\', '<cmd>Oil<cr>', { desc = 'Open Oil' })
    end,
  },
}
