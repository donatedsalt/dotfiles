return {
  {
    'echasnovski/mini.nvim',
    config = function()
      -- Common configuration presets.
      -- require('mini.basics').setup()
      -- autopairs
      require('mini.pairs').setup()
      -- Better Around/Inside textobjects.
      require('mini.ai').setup()
      -- Add/delete/replace surroundings.
      require('mini.surround').setup()
      -- Split and join arguments
      -- require('mini.splitjoin').setup()
      -- Better movements using square brackets.
      require('mini.bracketed').setup()
      -- tabline showing listed buffers.
      -- require('mini.tabline').setup()
      -- Buffer removing (unshow, delete, wipeout)
      -- require('mini.bufremove').setup()
      -- Statusline.
      require('mini.statusline').setup()
      -- Start menu.
      -- require('mini.starter').setup()
      -- Move selection.
      require('mini.move').setup()
      -- Jump to next/previous single character.
      require('mini.jump').setup()
      -- Jump within visible lines.
      require('mini.jump2d').setup()
      -- Session management.
      -- require('mini.sessions').setup()
    end,
  },
}
