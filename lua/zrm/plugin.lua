-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Telescope fzf
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Harpoon go brrr
	use('theprimeagen/harpoon')
	
	-- Undotree
	use('mbbill/undotree')

  -- Yuck parser
  use('elkowar/yuck.vim')

	-- Treesitter highlighting
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-treesitter/playground')

	-- Fugitive, git integration
	use('tpope/vim-fugitive')

	-- LSP zero
	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}

  -- Rust analzyer
  use {'simrat39/rust-tools.nvim'}

  -- Discord rich presense
  use {'andweeb/presence.nvim'}

  -- Obsidian stuff
  use {'epwalsh/obsidian.nvim'}
	
	-- Color scheme
	use { 'ellisonleao/gruvbox.nvim' }
	vim.cmd('colorscheme gruvbox')

  end)
