return {
  'rmagatti/auto-session',
  lazy = false,
  opts = {
    auto_save = false,
    suppressed_dirs = nil,
  },
  keys = {
    -- Will use Telescope if installed or a vim.ui.select picker otherwise
    { '<leader>wr', '<cmd>AutoSession search<CR>', desc = 'Session search' },
    { '<leader>ws', '<cmd>AutoSession save<CR>', desc = 'Save session' },
    { '<leader>wa', '<cmd>SessionToggleAutoSave<CR>', desc = 'Toggle autosave' },
  },
}
