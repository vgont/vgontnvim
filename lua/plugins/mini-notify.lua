return {
  'echasnovski/mini.nvim',
  version = "*",
  lazy = false,
  config = function()
    local notify = require("mini.notify")
    notify.setup({
      window = {
	config = { border = "rounded" },
	winblend = 0
      }
    })
    vim.notify = notify.make_notify()
  end
}
