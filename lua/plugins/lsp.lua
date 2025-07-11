return {
  {
    'neovim/nvim-lspconfig',
    config = function()
      vim.lsp.enable('lua_ls')
      vim.lsp.enable('ts_ls')
      vim.lsp.enable('eslint')

      require('lsp.omnisharp').setup()

      -- Keymaps
      vim.keymap.set('n', '<C-k>', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, { noremap = true, silent = true })
    end
  }
}
