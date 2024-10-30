return {
  {
    'obsidian-nvim/obsidian.nvim',
    version = '*',
    ft = 'markdown',
    ---@module 'obsidian'
    ---@type obsidian.config
    opts = {
      legacy_commands = false,
      workspaces = {
        {
          name = 'personal',
          path = '~/Documents/Obsidian/vaults/personal',
        },
        {
          name = 'work',
          path = '~/Documents/Obsidian/vaults/work',
        },
      },
      callbacks = {
        post_setup = function()
          vim.keymap.set('n', '<leader>ot', '<cmd>Obsidian toggle_checkbox<cr>', { desc = 'Toggle checkbox' })
          vim.keymap.set('n', '<leader>oc', '<cmd>Obsidian<cr>', { desc = 'Commands' })
          vim.keymap.set('n', '<leader>ow', '<cmd>Obsidian workspace<cr>', { desc = 'Workspace' })
          vim.keymap.set('n', '<leader>ov', '<cmd>Obsidian open<cr>', { desc = 'View in Obsidian' })
          vim.keymap.set('n', '<leader>or', '<cmd>Obsidian rename<cr>', { desc = 'Rename' })
          vim.keymap.set('n', '<leader>od', '<cmd>Obsidian dailies<cr>', { desc = 'Dailies' })
        end,
      },
    },
  },
}
