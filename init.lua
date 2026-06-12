-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("oil").setup()
vim.opt.autochdir = false
vim.g.autoformat = false
vim.keymap.set("n", "<C-z>", "<Nop>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-z>", "<Nop>", { noremap = true, silent = true })
vim.keymap.set("v", "<C-z>", "<Nop>", { noremap = true, silent = true })
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
