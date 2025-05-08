vim.cmd("set number")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

vim.keymap.set("n", "<S-t>", ":tabnew<CR>")
vim.keymap.set("n", "<S-Tab>", ":tabnext<CR>")

-- local tabOptions = { noremap = true, silent = true }
-- vim.keymap.set("n", "<leader>Tab", ">>", tabOptions)
-- vim.keymap.set("n", "<leader>S-Tab", ">>", tabOptions)
-- vim.keymap.set("v", "<leader>Tab", ">gv", tabOptions)
-- vim.keymap.set("v", "<leader>S-Tab", "<gv", tabOptions)

vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

vim.opt.termguicolors = true
vim.cmd([[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight LineNr guibg=none
  highlight SignColumn guibg=none
  highlight EndOfBuffer guibg=none
]])

vim.diagnostic.config({
	virtual_text = {
		prefix = "●",
		spacing = 2,
	},
	signs = true,
	underline = true,
	update_in_insert = true,
	severity_sort = true,
})
