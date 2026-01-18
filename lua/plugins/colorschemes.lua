local colorscheme = "gruvbox"

return {
  -- Gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    enabled = colorscheme == "gruvbox",
    opts = {
      transparent_mode = true,
    },
    config = function(_, opts)
      require("gruvbox").setup(opts)
      vim.cmd.colorscheme("gruvbox")
    end,
  },

  -- Vague
  {
    "vague2k/vague.nvim",
    priority = 1000,
    enabled = colorscheme == "vague",
    config = function()
      require("vague").setup({
        transparent = true,
      })
      vim.cmd.colorscheme "vague"
    end
  },

  {
    'jesseleite/nvim-noirbuddy',
    dependencies = {
      { 'tjdevries/colorbuddy.nvim' }
    },
    lazy = false,
    priority = 1000,
    enabled = colorscheme == "none",
    opts = {
      preset = "kiwi",
    },
  }
}
