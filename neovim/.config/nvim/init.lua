require("darkstar")

--this is a test line
require('dapui').setup()
require('dap-python').setup()

-- Load snippets from ~/.config/nvim/LuaSnip/
require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/LuaSnip/"})

vim.api.nvim_set_keymap("n", "<leader>dt", "DapUiToggle<CR>",{noremap=true})
vim.api.nvim_set_keymap("n", "<leader>db", "DapToggleBreakpoint<CR>",{noremap=true})
vim.api.nvim_set_keymap("n", "<leader>dc", "DapContinue<CR>",{noremap=true})
vim.api.nvim_set_keymap("n", "<leader>dr", "lua require('dapui').open({reset = true})<CR>",{noremap=true})
