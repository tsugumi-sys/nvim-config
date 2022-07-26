-- Import Lua modules
require'packer_init'
require'plugins/indent-blankline'
require'plugins/nvim-autopairs'
require'plugins/nvim-cmp'
require'plugins/nvim-lspconfig'
require'plugins/nvim-tree'
require'plugins/nvim-treesitter'
require'plugins/tokyonight'
require'plugins/toggle-term'
-- Select Interpreter
vim.g.python3_host_prog="/home/akira/akira/poteka-pipeline-pytorch/.venv/bin/python"

-- Vim settings
-- length of an actual \t character:
vim.opt.tabstop=4
-- length to use when editing text (eg. TAB and BS keys)
-- (0 for ‘tabstop’, -1 for ‘shiftwidth’):
vim.opt.softtabstop=-1
-- length to use when shifting text (eg. <<, >> and == commands)
-- (0 for ‘tabstop’):
vim.opt.shiftwidth=0
-- round indentation to multiples of 'shiftwidth' when shifting text
-- (so that it behaves like Ctrl-D / Ctrl-T):
vim.opt.shiftround=true
-- if set, only insert spaces; otherwise insert \t and complete with spaces:
vim.opt.expandtab=true
-- reproduce the indentation of the previous line:
vim.opt.autoindent=true
-- keep indentation produced by 'autoindent' if leaving the line blank:
-- set cpoptions+=I
-- try to be smart (increase the indenting level after ‘{’,
-- decrease it after ‘}’, and so on):
-- "set smartindent
-- a stricter alternative which works better for the C language:
-- set cindent
-- use language‐specific plugins for indenting (better):
vim.opt.number = true
vim.opt.hidden = true
vim.cmd("filetype plugin indent on")
