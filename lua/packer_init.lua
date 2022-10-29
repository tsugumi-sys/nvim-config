local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end
vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  } -- Status line
  use 'onsails/lspkind-nvim' -- vscode-like pictogram
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  -- Theme
  use 'folke/tokyonight.nvim'
  -- Folder, file tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  -- Language server
  use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim' -- lsp server, dap server, linters and formatter manager.
  use 'williamboman/mason-lspconfig.nvim'
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
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
  use 'lewis6991/gitsigns.nvim' -- Super fast git decorations implemented purely in lua/teal.
  use 'dinhhuy258/git.nvim' -- For git blame & browse
  --use({
  --  "iamcco/markdown-preview.nvim",
  --  run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" },
  --})
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  -- Image viewer
  use { 'ibhagwan/fzf-lua',
    -- optional for icon support
    requires = { 'kyazdani42/nvim-web-devicons' }
  }
  use { 'junegunn/fzf', run = './install --bin', }
  -- Markdown markdown-preview
end)
