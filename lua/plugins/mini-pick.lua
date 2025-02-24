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
    { "<leader>ff", "<cmd>Pick files tool='rg'<CR>", desc = "Open Pick files with fd" },
    { "<leader>fb", "<cmd>Pick buffers<CR>", desc = "Open Pick buffers" },
    { "<leader>fg", "<cmd>Pick grep<CR>", desc = "Open Pick buffers" },
  }
}
