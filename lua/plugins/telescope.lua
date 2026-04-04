return {
	"nvim-telescope/telescope.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		-- optional but recommended
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	opts = {
		defaults = {
			-- winblend = 0,
			previewer = true,
			mappings = {
				i = {
					-- Delete buffers
					["<C-d>"] = function(prompt_bufnr)
						require("telescope.actions").delete_buffer(prompt_bufnr)
					end,

					-- Create new file
					["<C-n>"] = function(prompt_bufnr)
						local actions = require("telescope.actions")
						-- Close Telescope first so the prompt doesn't get messy
						actions.close(prompt_bufnr)

						-- Ask for the new filename in the command line
						vim.ui.input({ prompt = "New file name: " }, function(input)
							if input and input ~= "" then
								vim.cmd("edit " .. input)
							end
						end)
					end,
					-- Quit window
					["QQ"] = function(prompt_bufnr)
						require("telescope.actions").close(prompt_bufnr)
					end,
				},
			},
		},
		pickers = {
			buffers = {
				show_all_buffers = true,
				sort_lastused = true,
				theme = "dropdown",
			},
		},
	},
	config = function(_, opts)
		local telescope = require("telescope")
		telescope.setup(opts)
		telescope.load_extension("fzf")
	end,
}
