return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false,
--   config = function()
--     require("nvim-treesitter.configs").setup({
--       ensure_installed = { "lua", "rust", "python", "javascript" },
--       highlight = { enable = true },
--     })
--   end,
}
