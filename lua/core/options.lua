vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.termguicolors = true

--- clipboard
vim.opt.clipboard = "unnamedplus"

-- fold with ts
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"

--- make sure fold open when open file
vim.opt.foldlevel = 99
vim.opt.foldenable = false
