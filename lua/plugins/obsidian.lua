return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/obsidian-vaults/personal",
      },
      {
        name = "work",
        path = "~/obsidian-vaults/work",
      },
    },
  },
}
