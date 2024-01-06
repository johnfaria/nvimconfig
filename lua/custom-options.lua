vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.wo.number = true
vim.wo.relativenumber = true
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrw = 1

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("i", "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })
map("v", "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })
map("n", "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })
map("s", "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

map("n", "<leader>l", "<CMD>Lazy<CR>", { desc = "Plugins manager" })

map("n", "<leader>e", "<CMD>NvimTreeToggle<CR>", { desc = "NvimTree Toggle" })
map("n", "<leader>o", "<CMD>NvimTreeFocus<CR>", { desc = "NvimTree Toggle" })
