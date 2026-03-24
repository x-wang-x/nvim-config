return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false,
  config = function()
    -- install parsers
    require("nvim-treesitter").install({ "lua", "javascript", "python" , "rust"},
    require('nvim-treesitter').setup {
    -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
    install_dir = vim.fn.stdpath('data') .. "/site"
    })
    vim.opt.runtimepath:append(vim.fn.stdpath("data") .."/site")
    -- enable highlighting manually
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { '<filetype>' },
      callback = function() vim.treesitter.start() end,
    })
  end,
}
