return {
  'folke/trouble.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local trouble = require 'trouble'
    trouble.setup {}
    local toggle = function()
      trouble.toggle 'workspace_diagnostics'
    end
    vim.keymap.set('n', '<leader>td', toggle, { desc = 'Toggle [T]rouble' })
  end,
}
