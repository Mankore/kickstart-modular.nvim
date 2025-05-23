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
    local neotest = require('neotest')

    local function find_nearest_node_modules_dir()
      local current_dir = vim.fn.expand('%:p:h') -- current buffer dir
      while current_dir ~= '/' do
        if vim.fn.isdirectory(current_dir .. '/node_modules') == 1 then
          return current_dir
        end
        current_dir = vim.fn.fnamemodify(current_dir, ':h')
      end
      return nil
    end

    local function get_root_dir()
      local original_cwd = vim.fn.getcwd()
      local node_modules_dir = find_nearest_node_modules_dir()
      return node_modules_dir or original_cwd
    end

    neotest.setup({
      adapters = {
        require('neotest-vitest')({
          cwd = get_root_dir,
          filter_dir = function(name, rel_path, root)
            return name ~= 'node_modules'
          end,
        }),
      },
    })
  end,
  keys = {
    {
      '<leader>tt',
      function()
        require('neotest').run.run(vim.fn.expand('%'))
      end,
      desc = 'Run File (Neotest)',
    },
    {
      '<leader>tT',
      function()
        require('neotest').run.run(vim.uv.cwd())
      end,
      desc = 'Run All Test Files (Neotest)',
    },
    {
      '<leader>tr',
      function()
        require('neotest').run.run()
      end,
      desc = 'Run Nearest (Neotest)',
    },
    {
      '<leader>tl',
      function()
        require('neotest').run.run_last()
      end,
      desc = 'Run Last (Neotest)',
    },
    {
      '<leader>ts',
      function()
        require('neotest').summary.toggle()
      end,
      desc = 'Toggle Summary (Neotest)',
    },
    {
      '<leader>to',
      function()
        require('neotest').output.open({ enter = true, auto_close = true })
      end,
      desc = 'Show Output (Neotest)',
    },
    {
      '<leader>tO',
      function()
        require('neotest').output_panel.toggle()
      end,
      desc = 'Toggle Output Panel (Neotest)',
    },
    {
      '<leader>tS',
      function()
        require('neotest').run.stop()
      end,
      desc = 'Stop (Neotest)',
    },
    {
      '<leader>tw',
      function()
        require('neotest').watch.toggle(vim.fn.expand('%'))
      end,
      desc = 'Toggle Watch (Neotest)',
    },
  },
}
