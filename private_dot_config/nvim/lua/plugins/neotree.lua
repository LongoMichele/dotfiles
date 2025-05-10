return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			-- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
		},
		config = function()
			require("neo-tree").setup({
				event_handlers = {
					{
						event = "file_open_requested",
						handler = function()
							vim.cmd("Neotree close")
						end,
					},
				},
			})
			vim.keymap.set("n", "<C-e>", ":Neotree filesystem focus right<CR>", {})
			vim.keymap.set("n", "<C-g>", ":Neotree git_status focus right<CR>", {})
		end,
	},
}
