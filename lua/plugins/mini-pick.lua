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
    vim.keymap.set("n", "<leader>f", ":Pick files<CR>", {noremap=true, silent=true}),
    vim.keymap.set("n", "<leader>b", ":Pick buffers<CR>", {noremap=true, silent=true}),
  }
}
