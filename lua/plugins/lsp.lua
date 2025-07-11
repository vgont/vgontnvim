return {
  {
    'neovim/nvim-lspconfig',
    config = function()
      require("lspconfig")

      vim.lsp.enable('lua_ls')
      vim.lsp.enable('ts_ls')
      vim.lsp.enable('eslint')

      local pid = vim.fn.getpid()
      lspconfig.omnisharp.setup({
        cmd = { "omnisharp", "--languageserver", "--hostPID", tostring(pid) },
        on_attach = nvlsp.on_attach,
        on_init = nvlsp.on_init,
        capabilities = nvlsp.capabilities,
      })

      vim.keymap.set('n', '<C-k>', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, {})
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, { noremap = true, silent = true })
    end
  }
}
