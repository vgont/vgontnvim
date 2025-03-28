return {
  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup()
    end
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = {
          'lua_ls',
          'ts_ls',
          'eslint',
          'rust_analyzer',
          'pyright',
          'elixirls',
          'gopls',
          'astro',
          'tailwindcss'
        }
      })
    end
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require("lspconfig")

      lspconfig.lua_ls.setup({})
      lspconfig.ts_ls.setup({})
      lspconfig.eslint.setup({})
      lspconfig.pyright.setup({})
      lspconfig.elixirls.setup({ cmd = {'elixir-ls'} })
      lspconfig.gopls.setup({})
      lspconfig.astro.setup({})
      lspconfig.tailwindcss.setup({ cmd = {'tailwindcss-language-server'} })

      vim.keymap.set('n', '<C-k>', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
