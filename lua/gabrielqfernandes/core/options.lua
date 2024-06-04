vim.wo.number = true
vim.wo.relativenumber = true

vim.o.hlsearch = false

vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.autoindent = true

vim.o.wrap = false
vim.o.smartcase = true

vim.o.cursorline = true
vim.o.guicursor = "n-v-c-i:block"

vim.o.termguicolors = true
vim.o.background = "dark"
vim.o.signcolumn = "yes"

vim.o.clipboard = "unnamedplus"

vim.o.splitright = true
vim.o.splitbelow = true

vim.o.undofile = true
vim.o.mouse = "a"

local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})

vim.o.hlsearch = true
