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
    require("mini.move").setup()
    require("mini.cmdline").setup()
    require("mini.indentscope").setup()

    require("mini.files").setup({
      windows = {
        preview = true,
      }
    })

    require("mini.operators").setup({
      replace = {
        prefix = "",
      },
    })

    local MiniPick = require("mini.pick")
    MiniPick.setup({
      options = {
        use_cache = true
      }
    })
    MiniPick.registry.pick_current_dir = function()
      local dir = vim.fn.expand('%:p:h'):gsub(vim.env.HOME, '~'):gsub('oil://', '')
      return MiniPick.builtin.files({}, { source = { cwd = dir } })
    end

    local MiniCompletion = require("mini.completion")
    MiniCompletion.setup({ delay = { completion = 15 } })
  end,
  keys = {
    -- MiniGit
    { "<leader>gc", "<cmd>Git commit<CR>",                    desc = "git commit",       mode = { "n" } },
    { "<leader>gt", "<cmd>Git status<CR>",                    desc = "git status",       mode = { "n" } },
    { "<leader>gs", "<cmd>lua MiniGit.show_at_cursor()<CR>",  desc = "git related data", mode = { "n" } },
    { "<leader>go", "<cmd>lua MiniDiff.toggle_overlay()<CR>", desc = "toggle git diff",  mode = { "n" } },
    {
      "<leader>gr",
      function()
        local current_line = vim.fn.line(".")
        vim.cmd('noau normal! y')
        local selected_text = vim.fn.getreg('"')
        vim.cmd('Git restore ' .. selected_text)
        vim.cmd("bd!")
        vim.cmd("Git status")
        vim.fn.cursor(current_line, 1)
      end,
      desc = "git restore selected file",
      mode = { "x" }
    },

    -- MiniPick
    { "<leader>pf", "<cmd>lua MiniPick.builtin.files()<CR>",                            desc = "pick files",                         mode = { "n" } },
    { "<leader>pp", "<cmd>lua MiniPick.registry.pick_current_dir()<CR>",                desc = 'pick current directory',             mode = { "n" } },
    { "<leader>pb", "<cmd>lua MiniPick.builtin.buffers()<CR>",                          desc = 'pick buffers',                       mode = { "n" } },
    { "<leader>pg", "<cmd>lua MiniPick.builtin.grep_live()<CR>",                        desc = 'live grep',                          mode = { "n" } },
    { "<leader>p.", "<cmd>lua MiniPick.builtin.resume()<CR>",                           desc = 'resume last picker',                 mode = { "n" } },

    -- MiniFiles
    { "<leader>fe", "<cmd>lua MiniFiles.open()<CR>",                                    desc = "Open MiniFiles" },
    { "<leader>ff", "<cmd>lua MiniFiles.open(vim.api.nvim_buf_get_name(0), false)<CR>", desc = "Open MiniFiles in current directory" },
  },
}
