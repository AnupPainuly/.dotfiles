vim.opt.termguicolors = true
--vim.opt.guicursor = ""
vim.opt.nu =  true
vim.opt.relativenumber =  true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME").. "/.vim/undoir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.signcolumn = "yes"
vim.opt.updatetime = 50
--vim.opt.colorcolumn = "80"
vim.opt.scrolloff = 999
vim.opt.rnu = true
vim.opt.foldenable = false
--vim.g['markdown_fenced_languages'] = {'c', 'lua', 'javascript'}
vim.g['markdown_syntax_conceal'] = 0
--vim.api.nvim_command([[
--autocmd BufWritePost *note-*.md :silent !buildNote %:p]])

