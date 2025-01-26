return {
  'catppuccin/nvim',
  priority = 1000,
  name = 'catppuccin',
  lazy = false,
  opts = {
  },
  config = function()
    vim.cmd.colorscheme 'catppuccin'
  end
}


