-- Import Lua modules
require 'packer_init'
require 'base'
require 'highlights'
require 'keymaps'
-- Import plugins settings
require 'plugins/git'
require 'plugins/gitsigns'
require 'plugins/indent-blankline'
require 'plugins/lspkind'
require 'plugins/lualine'
require 'plugins/mason'
require 'plugins/null-ls'
require 'plugins/nvim-autopairs'
require 'plugins/nvim-cmp'
require 'plugins/nvim-lspconfig'
require 'plugins/nvim-tree'
require 'plugins/toggle-term'
require 'plugins/tokyonight'
require 'plugins/treesitter'

local has = function(x)
  return vim.fn.has(x) == 1
end

local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('mac')
end
if is_win then
  require('windows')
end

-- Select Interpreter
vim.g.python3_host_prog = "/home/akira/akira/poteka-pipeline-pytorch/.venv/bin/python"
