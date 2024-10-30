return {
  {
    'mfussenegger/nvim-lint',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      local lint = require 'lint'
      lint.linters_by_ft = {
        -- html = { 'biome' },
        -- css = { 'biome' },
        -- javascript = { 'biome' },
        -- typescript = { 'biome' },
        -- jsx = { 'biome' },
        -- tsx = { 'biome' },
        -- json = { 'biome' },
        -- jsonc = { 'biome' },
        -- markdown = { 'markdownlint' },
        python = { 'ruff' },
      }

      -- Run linter.
      local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })
      vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
        group = lint_augroup,
        callback = function()
          lint.try_lint()
        end,
      })
    end,
  },
}
