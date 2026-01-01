-- Buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>')
vim.keymap.set('n', '<S-Tab>', ':bprev<CR>')
vim.keymap.set('n', '<leader>q', ':bd<CR>')

-- Good ones
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set('x', '<leader>y', 'mzy`z<cmd>delm z<CR>', { desc = "Yank and preserve cursor location" })
vim.keymap.set('x', '@', ':<C-u>lua ExecuteMacroOverVisualRange()<CR>', {
  noremap = true })

function ExecuteMacroOverVisualRange()
  local char = vim.fn.getchar()
  local register = vim.fn.nr2char(char)
  vim.cmd(string.format("'<,'>normal! @%s", register))
end

-- Terminal
vim.keymap.set('t', '<C-q>', '<C-\\><C-n>', { desc = "Normal mode" })
