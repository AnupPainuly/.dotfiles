vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

--shift+j appends the below lines to the current line
--cursor does not move to the end of line
vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

--void register
vim.keymap.set("x", "<leader>p" ,"\"_dP")

--copy to system register
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>yy", "\"+yy")

--paste form system register
vim.keymap.set("n", "<leader>P", "\"+P")
vim.keymap.set("n", "<leader>p", "\"+p")
vim.keymap.set("v", "<leader>P", "\"+P")
vim.keymap.set("v", "<leader>p", "\"+p")

--worst keypress of them allow
vim.keymap.set("n", "Q", "<nop>")

--output the scribbled notes to pdf with pandoc
vim.keymap.set("n", "<leader>o", ":silent !~/bin/buildNote %<CR>")

