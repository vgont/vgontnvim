return {
  'stevearc/quicker.nvim',
  ft = "qf",
  ---@module "quicker"
  config = function()
    local quicker = require("quicker")

    quicker.setup {
      keys = {
        {
          ">",
          function()
            quicker.expand({ before = 2, after = 2, add_to_existing = true })
          end,
          desc = "Expand quickfix context",
        },
        {
          "<",
          function()
            quicker.collapse()
          end,
          desc = "Collapse quickfix context",
        },
      },

      edit = {
        enabled = true,
        autosave = "unmodified",
      },
    }

    vim.keymap.set("n", "<leader>Q", function() quicker.toggle() end, { desc = "Toggle quickfix", })
    vim.keymap.set("n", "<leader>l", function() quicker.toggle({ loclist = true }) end, { desc = "Toggle loclist", })
    vim.keymap.set("n", "<leader>qn", ":cnext<CR>", { desc = "Next quickfix", })
    vim.keymap.set("n", "<leader>qp", ":cprevious<CR>", { desc = "Previous quickfix", })
  end
}
