return {
	"lewis6991/gitsigns.nvim",
	config = function()
		require("gitsigns").setup({
			signs = {
				add = { text = "▎" },
				change = { text = "▎" },
				delete = { text = "_" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
			},

			signcolumn = true,
			numhl = false,
			linehl = false,
			word_diff = false,
			watch_gitdir = {
				interval = 1000,
				follow_files = true,
			},
			current_line_blame = true,
			current_line_blame_opts = {
				delay = 300,
				virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
			},
			current_line_blame_formatter = "<author> ● <author_time:%d %b %Y> ● <summary>",
		})

		-- vim.keymap.set("n", "<leader>gb", function()
		--   require("gitsigns").toggle_current_line_blame()
		-- end, { desc = "Toggle Git Blame" })
		vim.keymap.set("n", "<leader>gn", ":Gitsigns toggle_numhl", { desc = "Toggle Git line number highlight" })
		vim.keymap.set("n", "<leader>gl", ":Gitsigns toggle_linehl", { desc = "Toggle Git line highlight" })
		vim.keymap.set("n", "<leader>gw", ":Gitsigns toggle_word_diff", { desc = "Toggle Git word diff highlight" })
	end,
}
