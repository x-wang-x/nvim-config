return {
  -- Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- Make sure it loads first
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
      })
    end,
  },

  -- Tokyonight
  {
    "folke/tokyonight.nvim",
    lazy = true,
  },

  -- Kanagawa
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
  },

  --nightfox
  { "EdenEast/nightfox.nvim" ,
    lazy = true,
    },
}
