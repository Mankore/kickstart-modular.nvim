-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  require('custom.plugins.colorschemes'),
  require('custom.plugins.bufferline'),
  require('custom.plugins.ts-autotag'),
  require('custom.plugins.neotest'),
  require('custom.plugins.lualine'),
  require('custom.plugins.nx'),
  require('custom.plugins.copilot'),
  require('custom.plugins.copilot-chat'),
  require('custom.plugins.trouble'),
  require('custom.plugins.mini'),
  -- require 'custom.plugins.codeium',
  -- require 'custom.plugins.noice',
}
