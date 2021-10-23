-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
-- Only if your version of Neovim doesn't have https://github.com/neovim/neovim/pull/12632 merged
-- vim._update_package_paths()

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- nvim lspconfig
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip'
  use 'folke/lua-dev.nvim'

  use 'windwp/nvim-autopairs'
  use 'glepnir/lspsaga.nvim'

  -- fuzzy finder
  use {
	  'nvim-telescope/telescope.nvim',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

	use {
		'lewis6991/gitsigns.nvim',
		requires = {
			'nvim-lua/plenary.nvim'
		},
		tag = 'release', -- To use the latest release
		config = function()
			require('gitsigns').setup()
		end
	}


  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

	use {
		'nvim-lualine/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}

  use {'kyazdani42/nvim-web-devicons'}
  use {
	  'kyazdani42/nvim-tree.lua',
	  requires = 'kyazdani42/nvim-web-devicons',
	  config = function() require'nvim-tree'.setup {} end
  }

  use 'folke/tokyonight.nvim'


end)

