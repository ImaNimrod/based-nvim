-- basic editor configuration

-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- disable netrw because we use nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- no line wrapping
vim.opt.wrap = false

-- better searching
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- look better
vim.opt.guicursor = ""
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "100"
vim.opt.laststatus = 2
vim.opt.cmdheight = 2

-- disable messages and nvim startup screen
vim.opt.shortmess:append "sIc"

-- split defaults
vim.opt.splitbelow = true
vim.opt.splitright = true

-- misc
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.scrolloff = 8
vim.opt.updatetime= 50
vim.opt.errorbells = false
