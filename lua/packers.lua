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
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip'
  use 'folke/lua-dev.nvim'
  use 'windwp/nvim-autopairs'

  use { 'ibhagwan/fzf-lua',
    requires = {
      'vijaymarupudi/nvim-fzf',
      'kyazdani42/nvim-web-devicons' } -- optional for icons
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

  use { 'alexghergh/nvim-tmux-navigation',
    config = function() require'nvim-tmux-navigation'.setup {
      disable_when_zoomed = true -- defaults to false
    }

      vim.api.nvim_set_keymap('n', "<C-h>", ":lua require'nvim-tmux-navigation'.NvimTmuxNavigateLeft()<cr>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', "<C-j>", ":lua require'nvim-tmux-navigation'.NvimTmuxNavigateDown()<cr>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', "<C-k>", ":lua require'nvim-tmux-navigation'.NvimTmuxNavigateUp()<cr>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', "<C-l>", ":lua require'nvim-tmux-navigation'.NvimTmuxNavigateRight()<cr>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', "<C-\\>", ":lua require'nvim-tmux-navigation'.NvimTmuxNavigateLastActive()<cr>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', "<C-Space>", ":lua require'nvim-tmux-navigation'.NvimTmuxNavigateNext()<cr>", { noremap = true, silent = true })
    end
  }

  use "terrortylor/nvim-comment"

  use {
    'phaazon/hop.nvim',
    as = 'hop',
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  }
  -- use 'liuchengxu/vista.vim'

  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

  use 'f-person/git-blame.nvim'

  -- vim plugins
  use 'ericcurtin/CurtineIncSw.vim'

  -- colorscheme
  -- use 'monsonjeremy/onedark.nvim'
  -- use 'tanvirtin/monokai.nvim'
  -- use 'Mofiqul/vscode.nvim'

  -- use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }

  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  use "lukas-reineke/indent-blankline.nvim"
  use 'kevinhwang91/rnvimr'
  -- use 'psliwka/vim-smoothie'

  use 'JoosepAlviste/nvim-ts-context-commentstring'

end)
