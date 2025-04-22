return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local function getTime()
      local time = os.date('*t')
      return string.format('%02d:%02d:%02d', time.hour, time.min, time.sec)
    end

    require('lualine').setup({
      options = {
        -- theme = 'codedark',
        theme = 'moonfly',
      },
      sections = {
        lualine_x = { getTime, 'encoding', 'fileformat', 'filetype' },
        lualine_c = { { 'filename', path = 4 } },
      },
    })
  end,
}
