local lsps = {
  'lua_ls',
  'ts_ls',
  'eslint',
  'terraformls',
  'marksman',
  'gopls',
  'pylsp',
}

return {
  {
    "mason-org/mason.nvim",
    opts = {}
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
    opts = {
      ensure_installed = lsps,
    },
  },
  {
    'neovim/nvim-lspconfig',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      vim.diagnostic.config({
        float = { border = "rounded" },
        virtual_text = true
      })

      require('lspconfig')

      for _, lsp in ipairs(lsps) do
        vim.lsp.enable(lsp)
      end

      require('lsp.omnisharp').setup()

      -- keymaps
      vim.keymap.set('n', '<c-k>', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, {})
      vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, { noremap = true, silent = true })
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})

      vim.keymap.set('n', '<leader>do', vim.diagnostic.open_float, {})
      vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, {})
      vim.keymap.set("n", "<leader>dl", vim.diagnostic.goto_prev, {})
    end
  }
}
