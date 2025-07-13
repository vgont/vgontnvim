local colorscheme = "vague"

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

  -- Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    enabled = colorscheme == "catppuccin",
    opts = {
      transparent_background = true,
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin")
    end,
  },

  -- Vesper
  {
    "datsfilipe/vesper.nvim",
    priority = 1000,
    enabled = colorscheme == "vesper",
    opts = {
      transparent = true,
    },
    config = function(_, opts)
      require("vesper").setup(opts)
      vim.cmd.colorscheme("vesper")
    end,
  },

  -- Vague
  {
    "vague2k/vague.nvim",
    priority = 1000,
    enabled = colorscheme == "vague",
    config = function()
      require("vague").setup({
        transparent = false,
      })
      vim.cmd.colorscheme "vague"
    end
  }
}
