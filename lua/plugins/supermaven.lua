return {
  'supermaven-inc/supermaven-nvim',
  event = 'InsertEnter',
  opts = {
    keymaps = {
      accept_suggestion = '<Tab>',
      accept_word = '<S-Tab>',
    },
  },
}
