return {
  'akinsho/toggleterm.nvim',
  version = "*",
  opts = {
    open_mapping = [[<c-\>]],
    hide_numbers = false,
    direction = 'float',
    size = vim.o.columns * 0.4,
    float_opts = {
      border = 'curved',
    },
  },
  config = function(_, opts)
    require('toggleterm').setup(opts)
    local getCurrDir = function() return vim.fn.expand('%:p:h'):gsub(vim.env.HOME, '~'):gsub('oil://', '') end

    vim.keymap.set("x", "<leader>ts", function() vim.cmd("'<,'>ToggleTermSendVisualSelection") end)
    vim.keymap.set("n", "<leader>tf",
      function() vim.cmd("ToggleTerm dir=" .. getCurrDir() .. " name=" .. getCurrDir()) end)
    vim.keymap.set("n", "<leader>tv", function() vim.cmd("ToggleTerm direction=vertical") end)
  end
}
