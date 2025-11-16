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
        transparent = true,
      })
      vim.cmd.colorscheme "vague"
    end
  },

  -- Overtones
  {
    "ericdwhite/overtones.nvim",
    enabled = colorscheme == "overtones",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "overtones"
    end,
  },

  -- Bamboo
  {
    "ribru17/bamboo.nvim",
    enabled = colorscheme == "bamboo",
    lazy = false,
    priority = 1000,
    config = function()
      require("bamboo").setup({})
      require("bamboo").load()
    end,
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
      preset = "minimal",
    },
  }
}
