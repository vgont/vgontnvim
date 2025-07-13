return {
  {
    'neovim/nvim-lspconfig',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      vim.diagnostic.config({
        float = { border = "rounded" },
        virtual_text = true
      })

      vim.lsp.enable('lua_ls')
      vim.lsp.enable('ts_ls')
      vim.lsp.enable('eslint')
      vim.lsp.enable('nil_ls')

      require('lsp.omnisharp').setup()

      -- keymaps
      vim.keymap.set('n', '<c-k>', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, {})
      vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, { noremap = true, silent = true })
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})

      vim.keymap.set('n', '<leader>do', vim.diagnostic.open_float, {})
      vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, opts)
      vim.keymap.set("n", "<leader>dN", vim.diagnostic.goto_prev, opts)
    end
  }
}
