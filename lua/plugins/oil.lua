return {
  "stevearc/oil.nvim",
  name = "oil",
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  lazy = false,
  keys = {
    { "<leader>fe", "<cmd>Oil<CR>", desc = "Open Oil" },
  },
  opts = {
    default_file_explorer = true,
    keymaps = {
      ["<Tab>"] = "actions.select",
    },
    view_options = {
      show_hidden = true,
    },
    confirmation = {
      border = "none",
      title = "Oil",
    },
    float = {
      preview_split = "right"
    }
  },
}
