return {
  {
    'mfussenegger/nvim-dap',
    dependencies = {
      'rcarriga/nvim-dap-ui',
      'nvim-neotest/nvim-nio',
      'williamboman/mason.nvim',
      'jay-babu/mason-nvim-dap.nvim',
    },
    keys = function()
      local dap = require 'dap'
      local dapui = require 'dapui'
      return {
        { '<F5>', dap.continue, desc = 'Debug: Start/Continue' },
        { '<F10>', dap.step_over, desc = 'Debug: Step Over' },
        { '<F11>', dap.step_into, desc = 'Debug: Step Into' },
        { '<F12>', dap.step_out, desc = 'Debug: Step Out' },
        { '<F9>', dap.toggle_breakpoint, desc = 'Debug: Toggle Breakpoint' },
        {
          '<S-F9>',
          function()
            dap.set_breakpoint(vim.fn.input 'Breakpoint condition: ')
          end,
          desc = 'Debug: Set Conditional Breakpoint',
        },
        { '<F7>', dapui.toggle, desc = 'Debug: Toggle UI' },
      }
    end,
    config = function()
      local dap = require 'dap'
      local dapui = require 'dapui'

      require('mason-nvim-dap').setup {
        automatic_installation = true,
        handlers = {},
        ensure_installed = {},
      }

      dap.listeners.after.event_initialized['dapui_config'] = dapui.open
      dap.listeners.before.event_terminated['dapui_config'] = dapui.close
      dap.listeners.before.event_exited['dapui_config'] = dapui.close
    end,
  },
}
