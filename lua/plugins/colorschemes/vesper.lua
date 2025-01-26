return {
  'datsfilipe/vesper.nvim',
  priority = 1000,
  name = 'vesper',
  lazy = false,
  opts = {
    transparent = true,
    italics = {
      comments = false,
      keywords = false,
      functions = false,
      strings = false,
      variables = false,
    },
  },
  config = function()
    vim.cmd.colorscheme 'vesper'
  end
}

