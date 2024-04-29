vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    vim.keymap.set('n', '<C-b>', ':NvimTreeToggle<CR>', { desc = 'Toggle neo tree' })
    require('nvim-tree').setup {
      sync_root_with_cwd = true,
      view = {
        width = 40,
      },
      renderer = {
        indent_markers = {
          enable = true,
        },
        icons = {
          web_devicons = {
            folder = {
              enable = true,
            },
          },
          glyphs = {
            git = {
              unstaged = '',
            },
          },
        },
      },
      diagnostics = {
        enable = true,
        show_on_dirs = true,
      },
      filters = {
        git_ignored = false,
        custom = {
          '.DS_Store',
        },
      },
    }
  end,
}
