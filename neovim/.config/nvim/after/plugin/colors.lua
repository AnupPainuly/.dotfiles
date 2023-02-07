-- setup must be called before loading the colorscheme
-- Default options:
--confif for community-gruvbox theme
require("gruvbox").setup({
    undercurl = true,
    underline = true,
    bold = true,
    italic = true,
    strikethrough = true,
    invert_selection = true,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true, -- invert background for search, diffs, statuslines and errors
    contrast = "hard", -- can be "hard", "soft" or empty string
    palette_overrides = {bright_green = "#b8bb26",},
    overrides = {},
    dim_inactive = false,
    transparent_mode = false,
  })

--config for sainnhe's gruvbox-material theme
vim.g['gruvbox_material_foreground'] = "original"
vim.g['gruvbox_material_background'] = "hard"
vim.g['gruvbox_material_better_performance'] = 1
vim.g['gruvbox_material_enable_bold'] = 1
vim.g['gruvbox_material_invert_selection'] = true
vim.g['gruvbox_material_visual'] = "reverse"
vim.g['gruvbox_material_statusline_style'] = "mix"
vim.g['gruvbox_material_current_word'] = "underline"

vim.opt.termguicolors = true

vim.cmd("colorscheme gruvbox-material")
