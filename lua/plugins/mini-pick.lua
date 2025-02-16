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
    { "ff", "<cmd>Pick files<CR>", desc = "Open Pick files" },
    { "fb", "<cmd>Pick buffers<CR>", desc = "Open Pick buffers" },
    { "fg", "<cmd>Pick grep<CR>", desc = "Open Pick buffers" },
  }
}
