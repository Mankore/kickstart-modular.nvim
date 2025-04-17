return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      require('catppuccin').setup({
        flavour = 'macchiato', -- latte, frappe, macchiato, mocha
        transparent_background = false,
        term_colors = false,
      })

      -- vim.cmd.colorscheme('catppuccin')
    end,
  },
  {
    'sainnhe/everforest',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.everforest_background = 'hard'
      vim.g.everforest_cursor = 'green'

      -- vim.cmd.colorscheme('everforest')
    end,
  },
  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_background = 'hard'
      vim.g.gruvbox_material_enable_italic = true
      vim.g.gruvbox_material_transparent_background = 0
      vim.g.gruvbox_material_float_style = 'dim'
      vim.g.gruvbox_material_ui_contrast = 'hard'

      vim.cmd.colorscheme('gruvbox-material')
    end,
  },
}
