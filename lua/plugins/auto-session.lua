return {
	"rmagatti/auto-session",
	lazy = false,
	keys = {
		-- Will use Telescope if installed or a vim.ui.select picker otherwise
		{ "<leader>wr", "<cmd>AutoSession search<CR>", desc = "Session search" },
		{ "<leader>ws", "<cmd>AutoSession save<CR>", desc = "Save session" },
		{ "<leader>wa", "<cmd>AutoSession toggle<CR>", desc = "Toggle autosave" },
	},

	opts = {
		auto_save = true,
		auto_restore_last_session = true,
		bypass_save_filetypes = nil, -- or whatever dashboard you use
		suppressed_dirs = { "~" },
		git_use_branch_name = true,
		git_auto_restore_on_branch_change = true,
		show_auto_restore_notif = true,
		session_lens = {
			picker = "telescope", -- "telescope"|"snacks"|"fzf"|"select"|nil Pickers are detected automatically but you can also manually choose one. Falls back to vim.ui.select
			mappings = {
				-- Mode can be a string or a table, e.g. {"i", "n"} for both insert and normal mode
				delete_session = { "i", "<C-d>" },
				alternate_session = { "i", "<C-s>" },
				copy_session = { "i", "<C-y>" },
			},

			picker_opts = {
				border = true,
				layout_config = {
					width = 0.8,
					height = 0.5,
				},

				load_on_setup = true,
			},
		},
	},
}
