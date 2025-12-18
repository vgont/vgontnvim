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

-- Terminal
vim.keymap.set('t', '<C-t>', '<C-\\><C-n>:bprev<CR>', { desc = "Hide terminal buffer" })
vim.keymap.set('t', '<C-q>', '<C-\\><C-n>', { desc = "Normal mode" })
vim.keymap.set('n', '<leader>fp', function() OpenTerminalWithCurrentDir() end,
  { desc = "Open terminal in current dirpath" })
function OpenTerminalWithCurrentDir()
  local dir = vim.fn.expand('%:p:h')
  local relative_path = vim.fn.fnamemodify(dir, ':.')..'/'

  vim.fn.setreg('p', relative_path)

  vim.cmd('terminal')
  vim.api.nvim_chan_send(vim.bo.channel, 'cd ' .. vim.fn.shellescape(relative_path) .. '\n')
  vim.api.nvim_chan_send(vim.bo.channel, 'clear\n')
  vim.cmd('startinsert')
end
