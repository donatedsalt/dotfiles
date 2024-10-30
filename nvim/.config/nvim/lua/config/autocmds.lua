vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_autocmd('RecordingLeave', {
  desc = 'Notify when macro recording stops',
  group = vim.api.nvim_create_augroup('MacroRecording', { clear = true }),
  callback = function()
    print 'Macro recording stopped'
  end,
})
