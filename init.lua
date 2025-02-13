require("config.lazy")

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd [[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]]

vim.opt.numberwidth = 4
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.signcolumn = "no"

vim.keymap.set("n", "<leader>q", function()
  if #vim.fn.getbufinfo({buflisted = 1}) <= 1 then
    vim.cmd("Oil")
  else
    vim.cmd("bd")
  end
end)

vim.keymap.set("n", "<leader>w", function()
  vim.cmd("w")
  vim.cmd("Fix")
end)

vim.api.nvim_create_user_command('Fix', ':EslintFixAll', {desc = "Fix all the errors in ESLint"})

