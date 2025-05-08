return {
	-- {
	-- 	"ahmedkhalf/project.nvim",
	-- 	dependencies = {
	-- 		"nvim-telescope/telescope.nvim",
	-- 	},
	-- 	config = function()
	-- 		require("project_nvim").setup({
	-- 			detection_methods = { "pattern" },
	-- 			patterns = { ".git", "Makefile", "package.json", "flake.nix" },
	-- 		})
	-- 		require("telescope").load_extension("projects")
	-- 		vim.keymap.set("n", "<leader>fp", ":Telescope projects<CR>", { desc = "Find project" })
	-- 	end,
	-- },
	{
		"goolord/alpha-nvim",
		-- dependencies = {
		-- 	"nvim-tree/nvim-web-devicons",
		-- 	"nvim-telescope/telescope.nvim",
		-- },

		config = function()
			local alpha = require("alpha")
			local dashboard = require("alpha.themes.dashboard")

			dashboard.section.header.val = {
				[[                                                                       ]],
				[[                                                                       ]],
				[[                                                                       ]],
				[[                                                                       ]],
				[[                                                                     ]],
				[[       ████ ██████           █████      ██                     ]],
				[[      ███████████             █████                             ]],
				[[      █████████ ███████████████████ ███   ███████████   ]],
				[[     █████████  ███    █████████████ █████ ██████████████   ]],
				[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
				[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
				[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
				[[                                                                       ]],
				[[                                                                       ]],
				[[                                                                       ]],
			}

			-- table.insert(dashboard.section.buttons.val, 1, {
			-- 	type = "button",
			-- 	val = "📁  Projects",
			-- 	on_press = function()
			-- 		require("telescope").extensions.projects.projects()
			-- 	end,
			-- 	opts = {
			-- 		shortcut = "<leader>fp",
			-- 		position = "center",
			-- 		hl = "AlphaButtons",
			-- 		hl_shortcut = "AlphaShortcut",
			-- 	},
			-- })
			alpha.setup(dashboard.opts)
		end,
	},
}
