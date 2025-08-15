-- Keymaps

-- set space for leader key

vim.g.mapleader = ' '
vim.g.localleader = ' '

-- keymaps

vim.keymap.set('n', '<leader>e', ':Neotree filesystem reveal left<CR>',{desc = "expand neotree sidebar"})
