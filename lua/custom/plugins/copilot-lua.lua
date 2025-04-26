return {
  'zbirenbaum/copilot.lua',
  event = 'VeryLazy',
  config = function()
    require('copilot').setup({
      suggestion = {
        enabled = true,
        auto_trigger = true,
        hide_during_completion = false,
        debounce = 75,
        trigger_on_accept = true,
        keymap = {
          accept = '<Tab>',
          accept_word = false,
          accept_line = false,
          next = false,
          prev = false,
          dismiss = false,
        },
      },
    })
  end,
}
