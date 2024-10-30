return {
  {
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    keys = {
      {
        '<leader>f',
        function()
          require('conform').format { async = true, lsp_format = 'fallback' }
        end,
        mode = '',
        desc = 'Format Buffer',
      },
    },
    opts = {
      notify_on_error = false,
      format_on_save = function(bufnr)
        local disable_filetypes = { c = true, cpp = true }
        local lsp_format_opt
        if disable_filetypes[vim.bo[bufnr].filetype] then
          lsp_format_opt = 'never'
        else
          lsp_format_opt = 'fallback'
        end
        return {
          timeout_ms = 500,
          lsp_format = lsp_format_opt,
        }
      end,
      formatters_by_ft = {
        html = { 'biome', 'prettierd', 'prettier', stop_after_first = true },
        css = { 'biome', 'prettierd', 'prettier', stop_after_first = true },
        javascript = { 'biome', 'prettierd', 'prettier', stop_after_first = true },
        typescript = { 'biome', 'prettierd', 'prettier', stop_after_first = true },
        jsx = { 'biome', 'prettierd', 'prettier', stop_after_first = true },
        tsx = { 'biome', 'prettierd', 'prettier', stop_after_first = true },
        json = { 'biome', 'prettierd', 'prettier', stop_after_first = true },
        jsonc = { 'biome', 'prettierd', 'prettier', stop_after_first = true },
        yaml = { 'biome', 'prettierd', 'prettier', stop_after_first = true },
        markdown = { 'biome', 'prettierd', 'prettier', stop_after_first = true },
        php = { 'php-cs-fixer' },
        blade = { 'blade-formatter' },
        sql = { 'sql-formatter' },
        python = { 'ruff' },
        lua = { 'stylua' },
        java = { 'google-java-format' },
        c = { 'clang-format' },
        cpp = { 'clang-format' },
      },
    },
  },
}
