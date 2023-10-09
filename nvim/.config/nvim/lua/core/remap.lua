vim.g.mapleader = " "

vim.keymap.set('v', '<leader>y', '"+y')

-- window movement keymaps
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', {noremap = true})

vim.api.nvim_set_keymap('t', '<A-h>', '<C-\\><C-n><C-w>h', {noremap = true})
vim.api.nvim_set_keymap('t', '<A-j>', '<C-\\><C-n><C-w>j', {noremap = true})
vim.api.nvim_set_keymap('t', '<A-k>', '<C-\\><C-n><C-w>k', {noremap = true})
vim.api.nvim_set_keymap('t', '<A-l>', '<C-\\><C-n><C-w>l', {noremap = true})

vim.api.nvim_set_keymap('i', '<A-h>', '<C-\\><C-n><C-w>h', {noremap = true})
vim.api.nvim_set_keymap('i', '<A-j>', '<C-\\><C-n><C-w>j', {noremap = true})
vim.api.nvim_set_keymap('i', '<A-k>', '<C-\\><C-n><C-w>k', {noremap = true})
vim.api.nvim_set_keymap('i', '<A-l>', '<C-\\><C-n><C-w>l', {noremap = true})

vim.api.nvim_set_keymap('n', '<A-h>', '<C-w>h', {noremap = true})
vim.api.nvim_set_keymap('n', '<A-j>', '<C-w>j', {noremap = true})
vim.api.nvim_set_keymap('n', '<A-k>', '<C-w>k', {noremap = true})
vim.api.nvim_set_keymap('n', '<A-l>', '<C-w>l', {noremap = true})
