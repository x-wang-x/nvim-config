-- LSP keymaps — applied when any server attaches
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local map = function(keys, func, desc)
			vim.keymap.set("n", keys, func, { buffer = args.buf, desc = desc })
		end

		map("gd", vim.lsp.buf.definition, "Go to definition")
		map("gr", vim.lsp.buf.references, "References")
		map("K", vim.lsp.buf.hover, "Hover docs")
		map("<leader>rn", vim.lsp.buf.rename, "Rename symbol")
		map("<leader>ca", vim.lsp.buf.code_action, "Code action")
		map("<leader>e", vim.diagnostic.open_float, "Line diagnostics")
		map("[d", function()
			vim.diagnostic.jump({ count = -1 })
		end, "Prev diagnostic")
		map("]d", function()
			vim.diagnostic.jump({ count = 1 })
		end, "Next diagnostic")
	end,
})

-- Default config for ALL LSP servers (capabilities from cmp)
vim.lsp.config("*", {
	capabilities = require("cmp_nvim_lsp").default_capabilities(),
})

return {
	-- Mason (installer UI)
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},

	-- Mason + LSP bridge — auto-installs & auto-enables servers
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"williamboman/mason.nvim",
			"neovim/nvim-lspconfig",
			"hrsh7th/cmp-nvim-lsp",
			"zapling/mason-conform.nvim",
		},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"rust_analyzer",
					"pyright",
          "vtsls",
				},
				-- Automatically enable installed servers (default: true)
				automatic_enable = true,
			})
			require("mason-conform").setup({
				automatic_installation = true,
			})
		end,
	},

	-- LSP base (loaded by mason-lspconfig)
	{ "neovim/nvim-lspconfig" },
}
