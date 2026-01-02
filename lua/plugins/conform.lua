return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      hcl = { "hclfmt" },
      tf = { "terraform fmt" },
      rust = { "rustfmt" },
    },

    formatters = {
      hclfmt = { command = "hclfmt" },
    },

    format_on_save = {
      timeout_ms = 500,
      lsp_format = "fallback",
    },
  }
}
