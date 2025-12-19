return {
  'akinsho/toggleterm.nvim',
  version = "*",
  opts = {
    open_mapping = [[<c-\>]],
    hide_numbers = false,
    close_on_exit = true,
    direction = 'float',
    width = 0.40,
    float_opts = {
      border = 'curved',
    },
  },
  keys = {
    { "<C-t>", "<cmd>TermSelect<cr>", desc = "Select Terminal" },
    {
      "<C-n>",
      function()
        local dir = vim.fn.expand('%:p:h'):gsub(vim.env.HOME, '~')
        vim.cmd("ToggleTerm dir=" .. dir .. " name=" .. dir)
      end,
      desc = "Select Terminal"
    },
  },
}
