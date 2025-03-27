return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    'marilari88/neotest-vitest',
  },
  config = function()
    local neotest = require 'neotest'

    neotest.setup {
      adapters = {
        require 'neotest-vitest' {
          -- cwd = get_root_dir, -- <- do not call func here - remove ()
          filter_dir = function(name, rel_path, root)
            return name ~= 'node_modules'
          end,
        },
      },
    }
  end,
}
