return {
  'echasnovski/mini.pick',
  cmd = 'Pick',
  opts = {
    mappings = {
      move_up = '<C-k>',
      move_down = '<C-j>'
    }
  },
  keys = {
    { "<leader>f", "<cmd>Pick files tool='git'<CR>", desc = "Open Pick files with git" },
    { "ff", "<cmd>Pick files tool='fd'<CR>", desc = "Open Pick files with fd" },
    { "fb", "<cmd>Pick buffers<CR>", desc = "Open Pick buffers" },
    { "fg", "<cmd>Pick grep<CR>", desc = "Open Pick buffers" },
  }
}
