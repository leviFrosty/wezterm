return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    -- Set the theme to be used. Themes can be found in `lua/lualine/themes/`
    theme = 'ayu_dark',
    -- Set the extensions to be used in the statusline
    extensions = { 'toggleterm', 'nvim-tree', 'mason', 'lazy' },
  },
}
