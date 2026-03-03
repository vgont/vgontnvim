return {
  { -- Markdown Preview --
    "toppair/peek.nvim",
    event = { "VeryLazy" },
    build = "deno task --quiet build:fast",
    config = function()
      require("peek").setup({
        app = "browser",
      })
      vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
      vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
    end,
  },
  { -- Typst Preview --
    'chomosuke/typst-preview.nvim',
    ft = 'typst',
    version = '1.*',
    opts = {},
  }
}
