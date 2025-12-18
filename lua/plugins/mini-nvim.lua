return {
  'echasnovski/mini.nvim',
  version = "*",
  priority = 1000,
  init = function()
    require("mini.notify").setup({
      window = {
        config = { border = "rounded" },
        winblend = 0
      }
    })
    vim.notify = require("mini.notify").make_notify()
  end,
  config = function()
    require("mini.ai").setup()
    require("mini.icons").setup()
    require("mini.surround").setup()
    require("mini.diff").setup()
    require("mini.git").setup()

    require("mini.operators").setup({
      replace = {
        prefix = "",
      },
    })

    require("mini.move").setup({
      mappings = {
        left = "<M-left>",
        right = "<M-right>",
        down = "<M-down>",
        up = "<M-up>",
        line_left = "<M-left>",
        line_right = "<M-right>",
        line_down = "<M-down>",
        line_up = "<M-up>",
      },
    })

    local MiniPick = require("mini.pick")
    MiniPick.setup({
      options = {
        use_cache = true
      }
    })

    MiniPick.registry.pick_current_dir = function()
      local dir = vim.fn.expand('%:p:h')
      return MiniPick.builtin.files({}, { source = { cwd = dir } })
    end
  end,
  keys = {
    { "<leader>gc", "<cmd>Git commit<CR>",                       desc = "git commit" },
    { "<leader>gt", "<cmd>Git status<CR>",                       desc = "git status" },
    { "<leader>gs", "<cmd>lua MiniGit.show_at_cursor()<CR>",     desc = "git related data" },
    { "<leader>go", "<cmd>lua MiniDiff.toggle_overlay()<CR>",    desc = "toggle git diff" },

    { "<leader>pf", "<cmd>lua MiniPick.builtin.files()<CR>",     desc = "pick files" },
    { "<leader>pp", "<cmd>lua MiniPick.registry.pick_current_dir()<CR>", desc = 'pick current directory' },
    { "<leader>pb", "<cmd>lua MiniPick.builtin.buffers()<CR>",   desc = 'pick buffers' },
    { "<leader>pg", "<cmd>lua MiniPick.builtin.grep_live()<CR>", desc = 'live grep' },
    { "<leader>p.", "<cmd>lua MiniPick.builtin.resume()<CR>",    desc = 'resume last picker' },
  },
}
