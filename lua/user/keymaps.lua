-- Key mappings
local keymap = vim.keymap.set

vim.g.mapleader = ' '

keymap('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', { desc = 'Toggle file tree' })
keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { desc = 'Find files' })
keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', { desc = 'Live grep' })
