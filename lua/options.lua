local set = vim.opt

set.termguicolors = true
set.number = true
set.relativenumber = true
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.smarttab = true
set.smartindent = true
set.hidden = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true
set.scrolloff = 8
set.signcolumn = "yes"
set.cmdheight = 1
set.updatetime = 100
set.backup = false
set.writebackup = false
set.splitbelow = true
set.splitright = true
set.autoread = true
set.mouse = "a"
set.clipboard = "unnamedplus"
set.completeopt = "noinsert,menuone,noselect"
set.foldexpr = "nvim_treesitter#foldexpr()"
set.foldmethod = "manual"
set.inccommand = "split"
set.swapfile = false
set.title = true
set.ttimeoutlen = 0
set.wildmenu = true
set.wrap = true

local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')
  Plug 'sheerun/vim-polyglot'
vim.call('plug#end')

vim.cmd([[
  filetype plugin indent on
  syntax on
]])
