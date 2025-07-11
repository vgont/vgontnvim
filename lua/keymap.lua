-- Buffer Navigation
vim.keymap.set('n', '<Tab>', ':bnext<CR>')
vim.keymap.set('n', '<S-Tab>', ':bprev<CR>')

-- Just Insanity
vim.keymap.set('n', '<leader>O', 'mzO<Esc>`z<cmd>delm z<CR>', { desc = "Add blank line above" })
vim.keymap.set('n', '<leader>o', 'mzo<Esc>`z<cmd>delm z<CR>', { desc = "Add blank line below" })

vim.keymap.set('x', '<leader>y', 'mzy`z<cmd>delm z<CR>', { desc = "Yank and preserve cursor location" })
