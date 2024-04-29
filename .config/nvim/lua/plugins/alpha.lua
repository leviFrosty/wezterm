return {
  'goolord/alpha-nvim',
  event = 'VimEnter', -- load plugin after all configuration is set
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },

  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    dashboard.section.header.val = {
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                     ]],
      [[       ████ ██████           █████      ██                     ]],
      [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
      [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
    }

    _Gopts = {
      position = 'center',
      hl = 'Type',
      -- wrap = "overflow";
    }

    -- Set menu
    dashboard.section.buttons.val = {
      -- dashboard.button('SPC j', '󰈚   Restore Session', ':SessionRestore<cr>'),
      dashboard.button('e', '   New file', ':ene <BAR> startinsert <CR>'),
      dashboard.button('f', '   Find file', ':cd $HOME/ | Telescope find_files<CR>'),
      dashboard.button('g', '󰱼   Find word', ':Telescope live_grep<CR>'),
      dashboard.button('r', '   Recent', ':Telescope oldfiles<CR><ESC>'),
      dashboard.button('c', '   Config', ':e $MYVIMRC <CR>'),
      dashboard.button('u', '󰂖   Update plugins', "<cmd>lua require('lazy').sync()<CR>"),
      dashboard.button('q', '   Quit NVIM', ':qa<CR>'),
    }

    dashboard.opts.opts.noautocmd = true
    alpha.setup(dashboard.opts)

    require('alpha').setup(dashboard.opts)

    vim.api.nvim_create_autocmd('User', {
      pattern = 'LazyVimStarted',
      callback = function()
        local stats = require('lazy').stats()
        local count = (math.floor(stats.startuptime * 100) / 100)
        dashboard.section.footer.val = {
          '󱐌 ' .. stats.count .. ' plugins loaded in ' .. count .. ' ms',
          ' ',
          '      ',
        }
        pcall(vim.cmd.AlphaRedraw)
      end,
    })
  end,
}
