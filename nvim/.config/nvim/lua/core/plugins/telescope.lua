local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>cc', builtin.colorscheme, {})

local actions = require('telescope.actions')
local action_layout = require("telescope.actions.layout")
require('telescope').setup{
	defaults = {
		mappings = {
			i = {
				["<esc>"] = actions.close,
				["<M-p>"] = action_layout.toggle_preview
			},
		},
	}
}
