-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.opt.autochdir = false
vim.opt.swapfile = false
vim.g.autoformat = true
vim.keymap.set("n", "<C-z>", "<Nop>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-z>", "<Nop>", { noremap = true, silent = true })
vim.keymap.set("v", "<C-z>", "<Nop>", { noremap = true, silent = true })
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

vim.g.lazyvim_php_lsp = "intelephense"
