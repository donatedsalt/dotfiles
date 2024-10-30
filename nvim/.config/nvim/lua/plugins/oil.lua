return {
  {
    'stevearc/oil.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local detail = false
      require('oil').setup {
        delete_to_trash = true,
        view_options = {
          show_hidden = true,
        },
        keymaps = {
          ['q'] = 'actions.close',
          ['gd'] = {
            desc = 'Toggle file detail view',
            callback = function()
              detail = not detail
              if detail then
                require('oil').set_columns { 'icon', 'permissions', 'size', 'mtime' }
              else
                require('oil').set_columns { 'icon' }
              end
            end,
          },
        },
      }
      vim.keymap.set('n', '-', '<cmd>Oil<cr>', { desc = 'Open Oil' })
      vim.keymap.set('n', '\\', '<cmd>Oil<cr>', { desc = 'Open Oil' })
      vim.keymap.set('n', '<leader>-', '<cmd>Oil --float<cr>', { desc = 'Open Oil in floating window' })
    end,
  },
}
