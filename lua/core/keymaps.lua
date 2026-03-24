vim.g.mapleader = " "

local keymap = vim.keymap.set

keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
--Save and|or quit
keymap("n", "<leader>w", ":w<CR>")
keymap("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "QQ", ":q!<CR>")
vim.keymap.set("n", "WW", ":w<CR>")
-- Save with Ctrl + s
keymap({ "n", "i", "v" }, "<C-s>", "<Esc>:w<cr>", { desc = "Save file" })
--Change mode
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode" })
--Clear highlight (searching)
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
