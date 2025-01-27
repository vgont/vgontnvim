require("config.lazy")

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.keymap.set("n", "<leader>f", ":Pick files<CR>", {noremap=true, silent=true})
vim.keymap.set("n", "<Tab>", ":Oil --float<CR>", {noremap=true, silent=true})

-- add a padding to the left of the line numbers
vim.opt.numberwidth = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
