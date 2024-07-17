require("config.lazy")
require("config.mappings")

-- persistent undo
vim.cmd('set undofile')
vim.cmd('set undodir=~/.vimundo')

-- clipboard

vim.api.nvim_set_option("clipboard", "unnamed")
