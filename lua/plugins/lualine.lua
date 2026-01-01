return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      component_separators = { left = '|', right = '' },
      section_separators = { left = '', right = '' },
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch", "diagnostics" },
      lualine_c = { "filename" },

      lualine_x = { "fileformat", "filetype" },
      lualine_y = { "lsp_status" },
      lualine_z = {}
    }
  },
}
