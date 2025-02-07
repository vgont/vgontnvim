return {
  'rose-pine/neovim',
  name = 'rose-pine',
  lazy = false,
  priority = 1000,
  opts = {
    dark_variant = 'moon',
    enable = {
      terminal = true,
    },
    styles = {
      bold = true,
      italic = false,
      transparency = true,
    }
  },
  config = function(_, opts)
    require('rose-pine').setup(opts)
    vim.cmd.colorscheme 'rose-pine'
  end
}
