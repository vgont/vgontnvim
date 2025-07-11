return {
  'echasnovski/mini.nvim',
  version = "*",
  lazy = false,
  config = function()
    require("mini.ai").setup()

    require("mini.icons").setup()

    require("mini.surround").setup()

    require("mini.operators").setup()

    require("mini.indentscope").setup()

    require("mini.bracketed").setup()

    require("mini.jump").setup()

    require("mini.statusline").setup()

    require("mini.splitjoin").setup()

    require("mini.pick").setup()

    require("mini.pairs").setup({
      disable_in_visualblock = true,
      disable_in_insert = true,
      disable_in_replace = true,
    })

    require("mini.pick").setup({
      window = {
	config = { border = "rounded" }
      }
    })

    require("mini.diff").setup()

    require("mini.git").setup()

    local notify = require("mini.notify")
    notify.setup({
      window = {
	config = { border = "rounded" },
	winblend = 0
      }
    })
    vim.notify = notify.make_notify()
  end,

  keys = {
    { "<leader>pf", "<cmd>Pick files<CR>", desc = "files picker" },
    { "<leader>pg", "<cmd>Pick grep_live<CR>", desc = "grep picker" },
    { "<leader>pb", "<cmd>Pick buffers<CR>", desc = "buffers picker" },

    { "<leader>gc", "<cmd>Git commit<CR>", desc = "git commit" },
    { "<leader>gt", "<cmd>Git status<CR>", desc = "git status" },
    { "<leader>gs", "<cmd>lua MiniGit.show_at_cursor()<CR>", desc = "git related data" },
    { "<leader>go", "<cmd>lua MiniDiff.toggle_overlay()<CR>", desc = "toggle git diff" },
  },
}
