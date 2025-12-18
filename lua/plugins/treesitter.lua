return {
  'nvim-treesitter/nvim-treesitter',
  version = false,
  event = { 'BufReadPre', 'BufNewFile' },
  build = ':TSUpdate',
  opts = {
    ensure_installed = {
      'bash',
      'c',
      'c_sharp',
      'cpp',
      'css',
      'go',
      'html',
      'java',
      'javascript',
      'json',
      'lua',
      'markdown',
      'python',
      'rust',
      'toml',
      'typescript',
      'yaml',
    },
    auto_install = false,
    highlight = {
      enable = true,
      disable = function(lang, buf)
        if lang == 'json' then
          local max_filesize = 500 * 1024 -- 100 KB
          local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
          if ok and stats and stats.size > max_filesize then
            return true
          end
        end
      end,
    },
    indent = { enable = true },
    incremental_selection = {
      enable = true,
      disable = { 'vim' },
      keymaps = {
        init_selection = '<CR>',
        node_incremental = '<CR>',
        node_decremental = '<BS>',
        scope_incremental = false,
      },
    },
  },
  config = function(_, opts)
    require('nvim-treesitter.configs').setup(opts)
  end,
}
