return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    bigfile = {},
    dashboard = {},
    explorer = {
      replace_netrw = true, -- Replace netrw with the snacks explorer
    },
    lazygit = {},
    picker = {
      sources = {
        explorer = {
          layout = { layout = { position = 'right' } },
        },
      },
    },
    -- scroll = { enabled = true },
  },
  keys = {
    {
      '<leader>lg',
      function()
        require('snacks').lazygit()
      end,
      desc = 'Lazygit',
    },
    {
      '\\',
      function()
        require('snacks').explorer.open()
      end,
      desc = 'Test',
    },
  },
}
