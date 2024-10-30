return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local harpoon = require 'harpoon'
      harpoon:setup()

      vim.keymap.set('n', '<leader>a', function()
        harpoon:list():add()
        print 'File added to harpoon'
      end, { desc = 'Harpoon add current file' })

      vim.keymap.set('n', '<C-e>', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end, { desc = 'Harpoon show window' })

      for i = 1, 6 do
        vim.keymap.set('n', '<C-' .. i .. '>', function()
          harpoon:list():select(i)
        end, { desc = 'Harpoon file ' .. i })
      end

      vim.keymap.set('n', '<C-[>', function()
        harpoon:list():prev()
      end, { desc = 'Harpoon previous file' })
      vim.keymap.set('n', '<C-]>', function()
        harpoon:list():next()
      end, { desc = 'Harpoon next file' })
    end,
  },
}
