return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    '3rd/image.nvim', -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  opts = {
    close_if_last_window = false,
    filesystem = {
      filtered_items = {
        visible = true,
        never_show = {
          '.DS_Store',
        },
      },
      follow_current_file = {
        enabled = true,
      },
    },
  },
}
