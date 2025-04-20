return {
  {
    'Equilibris/nx.nvim',

    dependencies = {
      'nvim-telescope/telescope.nvim',
    },
    lazy = true,

    opts = {
      -- See below for config options
      nx_cmd_root = 'npx nx',
    },

    -- Plugin will load when you use these keys
    keys = {
      { '<leader>nx', '<cmd>Telescope nx actions<CR>', desc = 'nx actions' },
    },
  },
}
