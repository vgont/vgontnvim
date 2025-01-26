return {
  "stevearc/oil.nvim",
  name = "oil",
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  lazy = false,
  opts = {
    keymaps = {
      ["<Tab>"] = "actions.select"
    },
    float = {
      preview_split = "right"
    }
  },
}
