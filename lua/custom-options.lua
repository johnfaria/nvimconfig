local opts = { noremap = true, silent = true }

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.wo.number = true
vim.wo.relativenumber = true
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrw = 1

vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

vim.api.nvim_set_keymap("n", "<leader>l", "<CMD>Lazy<CR>", { desc = "Plugins manager" })

vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })

vim.keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

vim.keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

vim.api.nvim_set_keymap("n", "n", "'Nn'[v:searchforward].'zv'", { expr = true, desc = "Next search result" })
vim.api.nvim_set_keymap("x", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
vim.api.nvim_set_keymap("o", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
vim.api.nvim_set_keymap("n", "N", "'nN'[v:searchforward].'zv'", { expr = true, desc = "Prev search result" })
vim.api.nvim_set_keymap("x", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })
vim.api.nvim_set_keymap("o", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })

-- better indent
vim.api.nvim_set_keymap("v", "<", "<gv", {})
vim.api.nvim_set_keymap("v", ">", ">gv", {})

-- Keep cursor centered when scrolling
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", opts)
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", opts)

-- Select all
vim.api.nvim_set_keymap("n", "<C-a>", "ggVG", opts)

-- paste over currently selected text without yanking it
vim.keymap.set("v", "p", '"_dp')
vim.keymap.set("v", "P", '"_dP')

-- Move to start/end of line
vim.keymap.set({ "n", "x", "o" }, "H", "^", opts)
vim.keymap.set({ "n", "x", "o" }, "L", "g_", opts)
