local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

local plugins = {
	'mbbill/undotree',
	'wbthomason/packer.nvim',
	'onsails/lspkind.nvim',
	'rush-rs/tree-sitter-asm',
	{
		'nvim-telescope/telescope.nvim', version = '0.1.2',
		dependencies = { {'nvim-lua/plenary.nvim'} }
	},
	'rebelot/kanagawa.nvim',
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	"nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
	'ThePrimeagen/harpoon',
	'wakatime/vim-wakatime',
	'dense-analysis/ale',
	'bstevary/betty-in-vim',
	'nvim-tree/nvim-web-devicons',
	'ThePrimeagen/vim-be-good',
	{
		'numToStr/Comment.nvim',
		lazy = false,
	},
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true }
	},
	{
		'alvarosevilla95/luatab.nvim',
		-- dependencies='kyazdani42/nvim-web-devicons'
	},
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'saadparwaiz1/cmp_luasnip',
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		dependencies = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},     -- Required
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{
				"L3MON4D3/LuaSnip",
				dependencies = { "rafamadriz/friendly-snippets" },
			},-- Required
		}
	},
	{
		'sudormrfbin/cheatsheet.nvim',
		dependencies = {
			{'nvim-telescope/telescope.nvim'},
			{'nvim-lua/popup.nvim'},
			{'nvim-lua/plenary.nvim'},
		}
	},
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		}
	},
	{
		'romgrk/barbar.nvim',
		dependencies = {
			'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
			'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
		},
		version = '^1.0.0', -- optional: only update when a new 1.x version is released
	},
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function() vim.fn["mkdp#util#install"]() end,
	},
}

require("lazy").setup(plugins, {})
