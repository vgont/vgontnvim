return {
  'saghen/blink.cmp',
  dependencies = 'rafamadriz/friendly-snippets',
  version = '*',
  ---@module 'blink.cmp'
  opts = {
    keymap = {
      ['<C-c>'] = { 'hide_documentation', 'fallback' },
      ['<Enter>'] = { 'select_and_accept', 'fallback' },
      ["<Tab>"] = {
        "snippet_forward",
        function()         -- sidekick next edit suggestion
          return require("sidekick").nes_jump_or_apply()
        end,
        "fallback",
      },
    },
    completion = {
      list = {
        max_items = 10,
        selection = {
          auto_insert = true,
        }
      },
      documentation = {
        auto_show = true,
      },
    },
    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = 'mono'
    },
    sources = {
      default = { 'lsp', 'buffer', 'snippets', 'path' },

      per_filetype = {
        sql = { 'dadbod' },
      },
      providers = {
        dadbod = { module = "vim_dadbod_completion.blink" },
      }
    },
  },
  opts_extend = { "sources.default" }
}
