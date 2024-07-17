-- mappings

-- neotree mappings
vim.api.nvim_set_keymap('n', '<C-n>', ':Neotree toggle reveal right<CR>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<C-h>', ':Neotree focus<CR>', { noremap = true, silent = false })

-- toggleterm mappings
vim.api.nvim_set_keymap('n', '<C-t>', ':ToggleTerm<CR>', { noremap = true, silent = false})

-- which-key mappings
local wk = require("which-key")
wk.add({
  { "<leader>f", group = "file" }, -- group
  { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File", mode = "n" },
  { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep", mode = "n"},
  { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find in Buffers", mode = "n"},
  { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags", mode = "n"},

  { "<leader>b", group = "bar" },
  { "<leader>bx", "<cmd>BufferClose<CR>", desc = "Close Buffer", mode = "n"}, 

  {
    -- Nested mappings are allowed and can be added in any order
    -- Most attributes can be inherited or overridden on any level
    -- There's no limit to the depth of nesting
    mode = { "n", "v" }, -- NORMAL and VISUAL mode
    { "<leader>q", "<cmd>q<cr>", desc = "Quit" }, -- no need to specify mode since it's inherited
    { "<leader>w", "<cmd>w<cr>", desc = "Write" },
  }
})

-- barbar mappings
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<Backspace>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<Tab>', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<M-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<M->>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<M-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<M-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<M-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<M-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<M-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<M-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<M-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<M-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<M-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<M-0>', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<M-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<M-c>', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bn', '<Cmd>BufferOrderByName<CR>', opts)
map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used


