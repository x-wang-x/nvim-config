return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				javascript = { "prettierd" },
				typescript = { "prettierd" },
				typescriptreact = { "prettierd" },
				javascriptreact = { "prettierd" },
				markdown = { "prettier" },
				json = { "prettier" },
				html = { "prettier" },
				css = { "prettier" },
				["*"] = { "trim_whitespace" },
				rust = { "rustfmt", lsp_format = "fallback" },
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
			},
			format_after_save = false,
			notify_on_error = true,
			notify_no_formatters = false,
		})
		vim.keymap.set("n", "<leader>f", function()
			require("conform").format()
		end, { desc = "Format file" })
	end,
}
--
