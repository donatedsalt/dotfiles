return {
  {
    'nvim-mini/mini.nvim',
    config = function()
      -- Better Around/Inside textobjects.
      require('mini.ai').setup()

      -- Align text interactively .
      -- require('mini.align').setup()

      -- Common configuration presets.
      -- require('mini.basics').setup {
      --   options = {
      --     basic = true,
      --     extra_ui = true,
      --     win_borders = 'auto',
      --   },
      --   mappings = {
      --     basic = true,
      --     option_toggle_prefix = '<leader>t',
      --     windows = true,
      --     move_with_alt = true,
      --   },
      --   autocommands = {
      --     basic = true,
      --     relnum_in_visual_mode = true,
      --   },
      --   silent = false,
      -- }

      -- Better movements using square brackets.
      require('mini.bracketed').setup()

      -- Automatic highlighting of word under cursor.
      require('mini.cursorword').setup()

      -- Icons provider.
      require('mini.icons').setup()

      -- Visualize and work with indent scope.
      -- require('mini.indentscope').setup()

      -- Jump to next/previous single character.
      require('mini.jump').setup()

      -- Jump within visible lines.
      require('mini.jump2d').setup()

      -- Move selection.
      require('mini.move').setup()

      -- Autopairs.
      require('mini.pairs').setup()

      -- Session management.
      -- require('mini.sessions').setup()

      -- Split and join arguments
      -- require('mini.splitjoin').setup()

      -- Start menu.
      -- require('mini.starter').setup()

      -- Statusline.
      require('mini.statusline').setup()

      -- Tabline showing listed buffers.
      -- require('mini.tabline').setup()

      -- Add/delete/replace surroundings.
      require('mini.surround').setup()
    end,
  },
}
