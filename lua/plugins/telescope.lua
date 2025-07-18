return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope-ui-select.nvim' },
  config = function()
    local builtin = require('telescope.builtin')

    vim.keymap.set('n', '<leader>pf', builtin.find_files)
    vim.keymap.set('n', '<leader>pg', builtin.live_grep)
    vim.keymap.set('n', '<leader>pt', builtin.treesitter)
    vim.keymap.set('n', '<leader>p.', builtin.resume)
    vim.keymap.set('n', '<leader>gb', builtin.git_branches)

    require("telescope").load_extension("ui-select")
  end
}
