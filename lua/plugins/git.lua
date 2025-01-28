return {
  {
    'echasnovski/mini-git',
    version = false,
    main = 'mini.git',
    opts = {},
    keys = {
      { "<leader>ga", ":Git add %<CR>" },
      { "<leader>gc", ":Git commit<CR>" },
      { "<leader>gs", ":Git status<CR>" },
      { "<leader>gp", ":Git push<CR>" },
    },
  },
  {
    'echasnovski/mini.diff',
    version = false,
    main = 'mini.diff',
    opts = {},
    keys = {
      { "<leader>go", ":lua MiniDiff.toggle_overlay()<CR>" },
    },
  }
}
