vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.o.laststatus = 3
vim.o.shellcmdflag = '-c'

-- tabs & indentation
vim.opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
vim.opt.shiftwidth = 2 -- 2 spaces for indent width
vim.opt.expandtab = true -- expand tab to spaces
vim.opt.autoindent = true -- copy indent from current line when starting new one
vim.o.relativenumber = true
vim.o.number = true
vim.opt.wrap = false

--search
vim.opt.hlsearch = false
vim.opt.incsearch = true

--scroll
vim.opt.scrolloff = 8
-- move highlighted text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--yank to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.opt.updatetime = 50
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- undo tree save history
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
