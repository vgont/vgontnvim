return {
  'saghen/blink.cmp',
  dependencies = 'rafamadriz/friendly-snippets',
  version = '*',
  ---@module 'blink.cmp'
  opts = {
    keymap = {
      ['<C-c>'] = { 'hide_documentation', 'fallback' },
      ['<Enter>'] = { 'select_and_accept', 'fallback' },
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
    },
  },
  opts_extend = { "sources.default" },
  cmdline = {
    keymap = {
      ['<Tab>'] = { 'show', 'accept' },
    },
    completion = { menu = { auto_show = true } },
  }
}
