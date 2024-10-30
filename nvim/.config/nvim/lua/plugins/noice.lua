return {
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    opts = {
      lsp = {
        progress = {
          enabled = false,
        },
        override = {
          ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
          ['vim.lsp.util.stylize_markdown'] = true,
        },
      },
      routes = {
        {
          view = 'notify',
          filter = { event = 'msg_showmode' },
        },
      },
    },
    dependencies = {
      'MunifTanjim/nui.nvim',
    },
  },
}
