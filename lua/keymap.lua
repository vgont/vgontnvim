-- Buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>')
vim.keymap.set('n', '<S-Tab>', ':bprev<CR>')
vim.keymap.set('n', '<leader>q', ':bd<CR>')

-- Good ones
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Just Insanity
vim.keymap.set('n', '<leader>O', 'mzO<Esc>`z<cmd>delm z<CR>', { desc = "Add blank line above" })
vim.keymap.set('n', '<leader>o', 'mzo<Esc>`z<cmd>delm z<CR>', { desc = "Add blank line below" })

vim.keymap.set('x', '<leader>y', 'mzy`z<cmd>delm z<CR>', { desc = "Yank and preserve cursor location" })
