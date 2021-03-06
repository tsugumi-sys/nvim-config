-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Folder, file tree
  use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icons
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  -- Theme
  use 'folke/tokyonight.nvim'
  -- Syntax highlighting
  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  -- Language server
  use 'neovim/nvim-lspconfig'
  -- Auto completion
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'saadparwaiz1/cmp_luasnip',
    },
  }
  -- Auto pairs (), {}, []
  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  -- Indent line
  use "lukas-reineke/indent-blankline.nvim"
  use {
      "akinsho/toggleterm.nvim", tag = 'v2.*',
  }
end)
