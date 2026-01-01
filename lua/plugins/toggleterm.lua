return {
  'akinsho/toggleterm.nvim',
  version = "*",
  opts = {
    open_mapping = [[<c-\>]],
    hide_numbers = false,
    direction = 'float',
  },
  config = function(_, opts)
    require('toggleterm').setup(opts)
    local dir = vim.fn.expand('%:p:h'):gsub(vim.env.HOME, '~'):gsub('oil://', '')
    vim.keymap.set("x", "<leader>tv", function() vim.cmd("'<,'>ToggleTermSendVisualSelection") end)
    vim.keymap.set("n", "<leader>tf", function() vim.cmd("ToggleTerm dir=" .. dir .. " name=" .. dir) end)
    vim.keymap.set("n", "<leader>tt", function() vim.cmd("ToggleTerm direction=horizontal") end)
  end
}
