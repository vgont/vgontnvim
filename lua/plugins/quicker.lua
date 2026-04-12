return {
  'stevearc/quicker.nvim',
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

    vim.keymap.set("n", "<leader>q", function() quicker.toggle() end, { desc = "Toggle quickfix", })
    vim.keymap.set("n", "<leader>l", function() quicker.toggle({ loclist = true }) end, { desc = "Toggle loclist", })

    vim.keymap.set("x", "<leader>gq", function()
      vim.cmd('noautocmd normal! "vy')
      local selection = vim.fn.getreg("v")
      if selection == "" then return end

      local escaped = vim.fn.escape(selection, "/\\")
      local dir = vim.fn.expand("%:p:h")

      vim.cmd("vimgrep /" .. escaped .. "/ " .. vim.fn.fnameescape(dir) .. "/**")
      vim.cmd("cw")
    end, { desc = "Vimgrep visual selection in current file's directory" })
  end
}
