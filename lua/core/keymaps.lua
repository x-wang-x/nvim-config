vim.g.mapleader = " "

local keymap = vim.keymap.set
---- telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find Files" })
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Live Grep" })
keymap("n", "<leader><space>", "<cmd>Telescope buffers<CR>", { desc = "List Buffers" })
keymap("n", "<leader>fr", "<cmd>Telescope buffers<CR>", { desc = "Recent Files" })
keymap("n", "<leader>x", ":bd<CR>", { desc = "Recent Files" })
--Save and|or quit
keymap("n", "<leader>w", ":w<CR>")
keymap("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "QQ", ":q!<CR>")
vim.keymap.set("n", "WW", ":w<CR>")
-- Save with Ctrl + s
keymap({ "n", "i", "v" }, "<C-s>", "<Esc>:w<CR>", { desc = "Save file" })
--Change mode
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode" })
--Clear highlight (searching)
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
