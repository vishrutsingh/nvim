vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- tabs & indentation
vim.opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
vim.opt.shiftwidth = 2 -- 2 spaces for indent width
vim.opt.expandtab = true -- expand tab to spaces
vim.opt.autoindent = true -- copy indent from current line when starting new one
vim.opt.relativenumber = true
vim.opt.wrap = false

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
